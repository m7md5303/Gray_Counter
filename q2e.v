module gray_counter (clk,rst,gray_out);
input  clk,rst;
output [1:0] gray_out;
reg [1:0] tmp;
always @(posedge clk or posedge rst) begin
    if(rst) begin
        tmp<=0;
    end
    else begin
        tmp<=(tmp+1);
    end
end  
assign gray_out={tmp[1],^tmp};

endmodule 