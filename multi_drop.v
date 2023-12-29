`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Creator: Varad Gadgil
// Github channel name: varadgadgil19
// Module Name: multi_drop
// Project Name: Multi Drop Bus
//////////////////////////////////////////////////////////////////////////////////

module multi_drop(qa, qb, qc, bus, ena, enb, enc, clk, rst);
output reg [7:0]qa, qb, qc;
input [7:0] bus;
input ena, enb, enc, clk;
input rst;
always@(posedge clk or posedge rst)
begin
if (rst) begin
qa <= 8'd0;
qb <= 8'd0;
qc <= 8'd0;
end
else
case ({ena, enb, enc})
3'b100: qa<=bus;
3'b010: qb<=bus;
3'b001: qc<=bus;
default: {qa, qb, qc}<=3'b000;
endcase
end
endmodule
