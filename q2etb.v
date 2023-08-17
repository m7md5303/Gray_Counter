module gray_counter_tb ();
reg clk,rst;
wire [1:0] gray_out;
gray_counter dut(clk,rst,gray_out);
initial begin
    clk=0;
    forever begin
        #40 clk=~clk;
    end
end
initial begin
rst=1;
repeat(3) @(negedge clk);
rst=0;
repeat(16) @(negedge clk);
#2 $stop;    
end 
endmodule 