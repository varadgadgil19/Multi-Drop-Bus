//////////////////////////////////////////////////////////////////////////////////
// Creator: Varad Gadgil
// Github channel name: varadgadgil19
// Module Name: multi_drop_tb
// Project Name: Testbench of Multi Drop Bus
//////////////////////////////////////////////////////////////////////////////////

module multi_drop_tb;
wire [7:0]qa, qb, qc;
reg [7:0] bus;
reg ena, enb, enc, clk;
reg rst;
multi_drop uv2(qa, qb, qc, bus, ena, enb, enc, clk, rst);
initial 
begin
clk = 0;
forever #20 clk = ~clk;
end
initial 
begin
rst = 1'b0;
bus = 8'b00110110;
{ena, enb, enc} = 3'b100;
#40;
rst = 1'b0;
bus = 8'b01001111;
{ena, enb, enc} = 3'b010;
#40;
rst = 1'b0;
bus = 8'b11110110;
{ena, enb, enc} = 3'b001;
#40;
rst = 1'b1;
bus = 8'b00110110;
{ena, enb, enc} = 3'b010;
#40;
$finish;
end
endmodule
