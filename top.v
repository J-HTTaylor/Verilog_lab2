module top(
    input [15:0] sw,
    output [15:0] led
);

    assign led[0] = sw[0]; // standard on/off switch
    assign led[1] = sw[1] | sw[2];  // OR opperator
    assign led[2] = sw[3] & sw[4]; // AND operator
    assign led[3] = sw[5] ^ sw[6]; // XOR operator
    
    assign led[4] = ~sw[0]; // standard NOT operator
    assign led[5] = ~(sw[8] | sw[9]); // NOR oppertor
    assign led[6] = ~(sw[10] & sw[11]); // NAND opperator
endmodule
