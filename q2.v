module counter_A2 (clk,set,out_counter);
input clk,set;
output reg [3:0] out_counter;
reg [3:0] out;
always @(*) begin
    out_counter=~out;
end
always @(posedge clk or negedge set) begin
    if(!set) begin
        out[0]=1'b0;
    end
    else begin
        out[0]<=~out[0];
    end
end
always @(posedge out[0] or negedge set) begin
    if(!set) begin
        out[1]=1'b0;
    end
    else begin
        out[1]<=~out[1];
    end
end
always @(posedge out[1] or negedge set) begin
    if(!set) begin
        out[2]=1'b0;
    end
    else begin
        out[2]<=~out[2];
    end
end
always @(posedge out[2] or negedge set) begin
    if(!set) begin
        out[3]=1'b0;
    end
    else begin
        out[3]<=~out[3];
    end
end
endmodule 