module MultiplexerIOIO(
    input [5:0] data_in,
    output data_out,
    input [2:0] config_in
);
    // Dispatch the config 
    wire [2:0] c_selector = config_in[2:0];

    // Synthesizer is probably better than me to infer the best mux
    assign data_out = config_in < 6 ? data_in[c_selector] : 0;
endmodule