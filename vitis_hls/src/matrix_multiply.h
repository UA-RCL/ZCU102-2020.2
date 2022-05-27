#ifndef MATRIX_MULTIPLY_H
#define MATRIX_MULTIPLY_H

// #include <complex>

const unsigned A_ROWS = 4;
const unsigned A_COLS = 64;
const unsigned B_ROWS = 64;
const unsigned B_COLS = 4;
const unsigned C_ROWS = A_ROWS;
const unsigned C_COLS = B_COLS;

// Define implementation type
typedef float MATRIX_T;

void matrix_multiply_top(
					MATRIX_T Ar [A_ROWS][A_COLS],
					MATRIX_T Ai [A_ROWS][A_COLS],
					MATRIX_T Br [B_ROWS][B_COLS],
					MATRIX_T Bi [B_ROWS][B_COLS],
					MATRIX_T Cr [C_ROWS][C_COLS],
					MATRIX_T Ci [C_ROWS][C_COLS]);

#endif

