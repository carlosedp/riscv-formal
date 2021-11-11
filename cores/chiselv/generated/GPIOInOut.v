// This module is inspired by Lucas Teske's Riscow digital port
// https://github.com/racerxdl/riskow/blob/main/devices/digital_port.v
//
module GPIOInOut #(parameter WIDTH=1, NUMGPIO=8) (
  inout   [NUMGPIO-1:0] dataIO,
  input   [WIDTH-1:0] dataIn,
  output  [WIDTH-1:0] dataOut,
  input   [WIDTH-1:0] dir);

  generate
    genvar idx;
    for(idx = 0; idx < NUMGPIO; idx = idx+1) begin: register
      `ifdef SIMULATION
      assign dataIO[idx] = dir[idx] ? dataIn[idx] : 1'b0;
      `else
      assign dataIO [idx]= dir[idx] ? dataIn[idx] : 1'bZ;
      `endif
     end
  endgenerate
  assign dataOut = dataIO;

endmodule
