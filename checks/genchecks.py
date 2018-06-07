#!/usr/bin/env python3

import os, sys, shutil, re

nret = 1
isa = "rv32i"
ilen = 32
xlen = 32
compr = False

depths = list()
blackbox = False

cfgname = "checks"
basedir = "%s/../.." % os.getcwd()
corename = os.getcwd().split("/")[-1]
solver = "boolector"
dumpsmt2 = False
sbycmd = "sby"
config = dict()

if len(sys.argv) > 1:
    assert len(sys.argv) == 2
    cfgname = sys.argv[1]

print("Reading %s.cfg." % cfgname)
with open("%s.cfg" % cfgname, "r") as f:
    cfgsection = None
    for line in f:
        line = line.strip()

        if line.startswith("#"):
            continue

        if line.startswith("[") and line.endswith("]"):
            cfgsection = line.lstrip("[").rstrip("]")
            continue

        if cfgsection is not None:
            if cfgsection not in config:
                config[cfgsection] = ""
            config[cfgsection] += line + "\n"

if "options" in config:
    for line in config["options"].split("\n"):
        line = line.split()

        if len(line) == 0:
            continue

        elif line[0] == "nret":
            assert len(line) == 2
            nret = int(line[1])

        elif line[0] == "isa":
            assert len(line) == 2
            isa = line[1]

        elif line[0] == "blackbox":
            assert len(line) == 1
            blackbox = True

        elif line[0] == "solver":
            assert len(line) == 2
            solver = line[1]

        elif line[0] == "dumpsmt2":
            assert len(line) == 1
            dumpsmt2 = True

        else:
            print(line)
            assert 0

if "64" in isa:
    xlen = 64

if "c" in isa:
    compr = True

print("Creating %s directory." % cfgname)
shutil.rmtree(cfgname, ignore_errors=True)
os.mkdir(cfgname)

def print_hfmt(f, text, **kwargs):
    for line in text.split("\n"):
        match = re.match(r"^\s*: ?(.*)", line)
        if match:
            line = match.group(1)
        elif line.strip() == "":
            continue
        print(re.sub(r"@([a-zA-Z0-9_]+)@",
                lambda match: str(kwargs[match.group(1)]), line), file=f)

hargs = dict()
hargs["basedir"] = basedir
hargs["cfgname"] = cfgname
hargs["core"] = corename
hargs["nret"] = nret
hargs["xlen"] = xlen
hargs["ilen"] = ilen
hargs["append"] = 0

instruction_checks = set()
consistency_checks = set()

if solver == "bmc3":
    hargs["engine"] = "abc bmc3"
    hargs["ilang_file"] = corename + "-gates.il"
else:
    hargs["engine"] = "smtbmc %s%s" % ("--dumpsmt2 " if dumpsmt2 else "", solver)
    hargs["ilang_file"] = corename + "-hier.il"

def test_disabled(check):
    if "filter-checks" in config:
        for line in config["filter-checks"].split("\n"):
            line = line.strip().split()
            if len(line) == 0: continue
            assert len(line) == 2 and line[0] in ["-", "+"]
            if re.match(line[1], check):
                return line[0] == "-"
    return False

def get_depth_cfg(patterns):
    ret = None
    if "depth" in config:
        for line in config["depth"].split("\n"):
            line = line.strip().split()
            if len(line) == 0:
                continue
            for pat in patterns:
                if re.fullmatch(line[0], pat):
                    ret = [int(s) for s in line[1:]]
    print(patterns, ret)
    return ret

# ------------------------------ Instruction Checkers ------------------------------

def check_insn(insn, chanidx):
    check = "insn_%s_ch%d" % (insn, chanidx)
    depth_cfg = get_depth_cfg(["insn", "insn_ch%d" % chanidx, "insn_%s" % insn, "insn_%s_ch%d" % (insn, chanidx)])

    if depth_cfg is None: return
    assert len(depth_cfg) == 1

    if test_disabled(check): return
    instruction_checks.add(check)

    hargs["insn"] = insn
    hargs["checkch"] = check
    hargs["channel"] = "%d" % chanidx
    hargs["depth"] = depth_cfg[0]
    hargs["depth_plus"] = depth_cfg[0] + 2

    with open("%s/%s.sby" % (cfgname, check), "w") as sby_file:
        print_hfmt(sby_file, """
                : [options]
                : mode bmc
                : append @append@
                : tbtop wrapper.uut
                : depth @depth_plus@
                :
                : [engines]
                : @engine@
                :
                : [script]
        """, **hargs)

        if "script-defines" in config:
            print_hfmt(sby_file, config["script-defines"], **hargs)

        print("read_verilog -sv %s.sv" % check, file=sby_file)

        if "script-sources" in config:
            print_hfmt(sby_file, config["script-sources"], **hargs)

        print_hfmt(sby_file, """
                : prep -flatten -nordff -top rvfi_testbench
                :
                : [files]
                : @basedir@/@cfgname@/rvfi_macros.vh
                : @basedir@/@cfgname@/rvfi_channel.sv
                : @basedir@/@cfgname@/rvfi_testbench.sv
                : @basedir@/@cfgname@/rvfi_insn_check.sv
                : @basedir@/insns/insn_@insn@.v
                :
                : [file @checkch@.sv]
        """, **hargs)

        print_hfmt(sby_file, """
                : `define RISCV_FORMAL
                : `define RISCV_FORMAL_NRET @nret@
                : `define RISCV_FORMAL_XLEN @xlen@
                : `define RISCV_FORMAL_ILEN @ilen@
                : `define RISCV_FORMAL_CHECKER rvfi_insn_check
                : `define RISCV_FORMAL_RESET_CYCLES 1
                : `define RISCV_FORMAL_CHECK_CYCLE @depth@
                : `define RISCV_FORMAL_INSN_MODEL rvfi_insn_@insn@
                : `define RISCV_FORMAL_CHANNEL_IDX @channel@
        """, **hargs)

        if blackbox:
            print("`define RISCV_FORMAL_BLACKBOX_REGS", file=sby_file)

        if compr:
            print("`define RISCV_FORMAL_COMPRESSED", file=sby_file)

        if "defines" in config:
            print_hfmt(sby_file, config["defines"], **hargs)

        print_hfmt(sby_file, """
                : `include "rvfi_macros.vh"
                : `include "rvfi_channel.sv"
                : `include "rvfi_testbench.sv"
                : `include "rvfi_insn_check.sv"
                : `include "insn_@insn@.v"
        """, **hargs)

with open("../../insns/isa_%s.txt" % isa) as isa_file:
    for insn in isa_file:
        for chanidx in range(nret):
            check_insn(insn.strip(), chanidx)

# ------------------------------ Consistency Checkers ------------------------------

def check_cons(check, chanidx=None, start=None, trig=None, depth=None):
    hargs["check"] = check
    hargs["start"] = start

    if chanidx is not None:
        depth_cfg = get_depth_cfg([check, "%s_ch%d" % (check, chanidx)])
        hargs["channel"] = "%d" % chanidx
        check += "_ch%d" % chanidx

    else:
        depth_cfg = get_depth_cfg([check])

    if depth_cfg is None: return

    if start is not None:
        start = depth_cfg[start]

    if trig is not None:
        trig = depth_cfg[trig]

    if depth is not None:
        depth = depth_cfg[depth]

    hargs["depth"] = depth
    hargs["depth_plus"] = depth + 2

    hargs["checkch"] = check

    if test_disabled(check): return
    consistency_checks.add(check)

    with open("%s/%s.sby" % (cfgname, check), "w") as sby_file:
        print_hfmt(sby_file, """
                : [options]
                : mode bmc
                : append @append@
                : tbtop wrapper.uut
                : depth @depth_plus@
                :
                : [engines]
                : @engine@
                :
                : [script]
        """, **hargs)

        if "script-defines" in config:
            print_hfmt(sby_file, config["script-defines"], **hargs)

        if ("script-defines %s" % hargs["check"]) in config:
            print_hfmt(sby_file, config["script-defines %s" % hargs["check"]], **hargs)

        print_hfmt(sby_file, """
                : read_verilog -sv @checkch@.sv
        """, **hargs)

        if "script-sources" in config:
            print_hfmt(sby_file, config["script-sources"], **hargs)

        print_hfmt(sby_file, """
                : prep -flatten -nordff -top rvfi_testbench
                :
                : [files]
                : @basedir@/@cfgname@/rvfi_macros.vh
                : @basedir@/@cfgname@/rvfi_channel.sv
                : @basedir@/@cfgname@/rvfi_testbench.sv
                : @basedir@/@cfgname@/rvfi_@check@_check.sv
                :
                : [file @checkch@.sv]
        """, **hargs)

        print_hfmt(sby_file, """
                : `define RISCV_FORMAL
                : `define RISCV_FORMAL_NRET @nret@
                : `define RISCV_FORMAL_XLEN @xlen@
                : `define RISCV_FORMAL_ILEN @ilen@
                : `define RISCV_FORMAL_CHECKER rvfi_@check@_check
                : `define RISCV_FORMAL_RESET_CYCLES @start@
                : `define RISCV_FORMAL_CHECK_CYCLE @depth@
        """, **hargs)

        if blackbox and hargs["check"] != "liveness":
            print("`define RISCV_FORMAL_BLACKBOX_ALU", file=sby_file)

        if blackbox and hargs["check"] != "reg":
            print("`define RISCV_FORMAL_BLACKBOX_REGS", file=sby_file)

        if chanidx is not None:
            print("`define RISCV_FORMAL_CHANNEL_IDX %d" % chanidx, file=sby_file)

        if trig is not None:
            print("`define RISCV_FORMAL_TRIG_CYCLE %d" % trig, file=sby_file)

        if "defines" in config:
            print_hfmt(sby_file, config["defines"], **hargs)

        if ("defines %s" % hargs["check"]) in config:
            print_hfmt(sby_file, config["defines %s" % hargs["check"]], **hargs)

        print_hfmt(sby_file, """
                : `include "rvfi_macros.vh"
                : `include "rvfi_channel.sv"
                : `include "rvfi_testbench.sv"
                : `include "rvfi_@check@_check.sv"
        """, **hargs)

for i in range(nret):
    check_cons("reg", chanidx=i, start=0, depth=1)
    check_cons("pc_fwd", chanidx=i, start=0, depth=1)
    check_cons("pc_bwd", chanidx=i, start=0, depth=1)
    check_cons("liveness", chanidx=i, start=0, trig=1, depth=2)
    check_cons("unique", chanidx=i, start=0, trig=1, depth=2)
    check_cons("causal", chanidx=i, start=0, depth=1)

check_cons("hang", start=0, depth=1)

# ------------------------------ Makefile ------------------------------

with open("%s/makefile" % cfgname, "w") as mkfile:
    print("all:", end="", file=mkfile)

    checks = list(sorted(consistency_checks)) + list(sorted(instruction_checks))

    for check in checks:
        print(" %s/PASS" % check, end="", file=mkfile)
    print(file=mkfile)

    for check in checks:
        print("%s/PASS:" % check, file=mkfile)
        print("\t%s %s.sby" % (sbycmd, check), file=mkfile)

print("Generated %d checks." % (len(consistency_checks) + len(instruction_checks)))

