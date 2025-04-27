#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input_t> &flatten_9_input,
    hls::stream<result_t> &layer11_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=flatten_9_input,layer11_out 
    #pragma HLS DATAFLOW 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight3_t, 50752>(w3, "w3.txt");
        nnet::load_weights_from_txt<bias3_t, 64>(b3, "b3.txt");
        nnet::load_weights_from_txt<weight6_t, 2048>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 32>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight9_t, 128>(w9, "w9.txt");
        nnet::load_weights_from_txt<bias9_t, 4>(b9, "b9.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    auto& layer2_out = flatten_9_input;
    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=1
    nnet::dense<input_t, layer3_t, config3>(layer2_out, layer3_out, w3, b3); // q_dense_9

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=1
    nnet::linear<layer3_t, layer5_t, linear_config5>(layer3_out, layer5_out); // q_activation_6

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=1
    nnet::dense<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // q_dense_10

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=1
    nnet::linear<layer6_t, layer8_t, linear_config8>(layer6_out, layer8_out); // q_activation_7

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=1
    nnet::dense<layer8_t, layer9_t, config9>(layer8_out, layer9_out, w9, b9); // q_dense_11

    nnet::softmax<layer9_t, result_t, softmax_config11>(layer9_out, layer11_out); // activation_3

}
