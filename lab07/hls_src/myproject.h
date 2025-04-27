#ifndef MYPROJECT_H_
#define MYPROJECT_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"

#include <ap_axi_sdata.h>

#include <iostream>



// Define AXI Stream structure for float data
//struct axis_int_t {
//    //float data;
//	ap_uint<16> data;
//    ap_uint<1> last;
//};
//
typedef ap_axis<32,2,5,6> axis_int_t;



// Prototype of top level function for C-synthesis
void inference(
		hls::stream<axis_int_t>& input,

		int *result
//		hls::stream<axis_int_t> &result

);

#endif
