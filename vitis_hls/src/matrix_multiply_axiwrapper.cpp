#include <assert.h>
#include <ap_axi_sdata.h>
#include "hls_stream.h"
#include "matrix_multiply.h"

//typedef ap_axiu<32,1,1,1> AXI_VAL;
typedef hls::axis<float,1,1,1> AXI_VAL;

// How many total values are we going to need to stream in? i.e. how many entries are in both the A and B matrices?
#define INPUT_SIZE ((2 * A_ROWS * A_COLS) + (2 * B_ROWS * B_COLS))

// How many total values are we going to need to stream out? i.e. how many entries are in the C matrix?
#define OUTPUT_SIZE  (2 * C_ROWS * C_COLS)

void wrapper_mmult_hw(hls::stream<AXI_VAL> &in_stream, hls::stream<AXI_VAL> &out_stream) {
	MATRIX_T Ar [A_ROWS][A_COLS];
	MATRIX_T Ai [A_ROWS][A_COLS];
	MATRIX_T Br [B_ROWS][B_COLS];
	MATRIX_T Bi [B_ROWS][B_COLS];
	MATRIX_T Cr [C_ROWS][C_COLS];
	MATRIX_T Ci [C_ROWS][C_COLS];
	assert(sizeof(MATRIX_T)*8 == 32);
	
	AXI_VAL val;
	// Stream in the 4 input matrices
	for (int i = 0; i < A_ROWS; i++) {
#pragma HLS LOOP_TRIPCOUNT min = A_ROWS max = A_ROWS
		for (int j = 0; j < A_COLS; j++) {
#pragma HLS LOOP_TRIPCOUNT min = A_COLS max = A_COLS
			#pragma HLS PIPELINE II=1
			in_stream.read(&val);
			Ar[i][j] = val.data;
		}
	}
	for (int i = 0; i < A_ROWS; i++) {
#pragma HLS LOOP_TRIPCOUNT min = A_ROWS max = A_ROWS
		for (int j = 0; j < A_COLS; j++) {
#pragma HLS LOOP_TRIPCOUNT min = A_COLS max = A_COLS
			#pragma HLS PIPELINE II=1
			in_stream.read(&val);
			Ai[i][j] = val.data;
		}
	}
	
	for (int i = 0; i < B_ROWS; i++) {
#pragma HLS LOOP_TRIPCOUNT min = B_ROWS max = B_ROWS
		for (int j = 0; j < B_COLS; j++) {
#pragma HLS LOOP_TRIPCOUNT min = B_COLS max = B_COLS
			#pragma HLS PIPELINE II=1
			in_stream.read(&val);
			Br[i][j] = val.data;
		}
	}
	
	for (int i = 0; i < B_ROWS; i++) {
#pragma HLS LOOP_TRIPCOUNT min = B_ROWS max = B_ROWS
		for (int j = 0; j < B_COLS; j++) {
#pragma HLS LOOP_TRIPCOUNT min = B_COLS max = B_COLS
			#pragma HLS PIPELINE II=1
			in_stream.read(&val);
			Bi[i][j] = val.data;
		}
	}

	// Do the multiplication
	matrix_multiply_top(Ar,Ai,Br,Bi,Cr,Ci);
	
 	// Stream out the result matrices
 	for (int i = 0; i < C_ROWS; i++) {
 #pragma HLS LOOP_TRIPCOUNT min = C_ROWS max = C_ROWS
 		for (int j = 0; j < C_COLS; j++) {
 #pragma HLS LOOP_TRIPCOUNT min = C_COLS max = C_COLS
 			#pragma HLS PIPELINE II=1
 			val.data = Cr[i][j];
 			val.last = 0;
 			val.keep = 0xf;
 			val.strb = 0xf;
 			out_stream.write(val);
 		}
 	}

 	for (int i = 0; i < C_ROWS; i++) {
 #pragma HLS LOOP_TRIPCOUNT min = C_ROWS max = C_ROWS
 		for (int j = 0; j < C_COLS; j++) {
 #pragma HLS LOOP_TRIPCOUNT min = C_COLS max = C_COLS
 			#pragma HLS PIPELINE II=1
 			val.data = Ci[i][j];
 			val.last = ((i == (C_ROWS - 1)) && (j == (C_COLS - 1)));
 			val.keep = 0xf;
 			val.strb = 0xf;
 			out_stream.write(val);
 		}
 	}
}

void HLS_accel (hls::stream<AXI_VAL> &INPUT_STREAM, hls::stream<AXI_VAL> &OUTPUT_STREAM)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis		   port=OUTPUT_STREAM
#pragma HLS INTERFACE axis		   port=INPUT_STREAM

	wrapper_mmult_hw(INPUT_STREAM, OUTPUT_STREAM);

	return;
}
