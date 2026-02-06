# Examples

C/C++ HLS code examples referenced throughout the pp4fpgas textbook.

## Organization

Examples are organized by topic, corresponding to book chapters:

| Prefix | Chapter | Description |
|--------|---------|-------------|
| `fir*`, `block_fir*`, `complex_fir*` | FIR Filters | Finite impulse response filter implementations |
| `cordic*` | CORDIC | Coordinate rotation digital computer |
| `dft*` | DFT | Discrete Fourier Transform |
| `fft*` | FFT | Fast Fourier Transform |
| `matrix_vector*` | Sparse Matrix Vector | Matrix-vector multiplication variants |
| `matrixmultiplication*`, `block_mm*` | Matrix Multiplication | Matrix multiplication and blocking |
| `spmv*` | Sparse Matrix Vector | Sparse matrix-vector operations |
| `prefixsum*` | Prefix Sum & Histogram | Prefix sum algorithms |
| `histogram*` | Prefix Sum & Histogram | Histogram implementations |
| `insertion_sort*`, `merge_sort*` | Sorting | Sorting algorithm implementations |
| `huffman*` | Huffman Encoding | Huffman encoding/decoding |
| `video*`, `bitmap*` | Video Processing | 2D filter and video processing |

## Building and Testing

```bash
make test    # Compile and run all test executables (requires Vivado HLS headers)
```

The Makefile automatically discovers test files by finding `*-top.c` and `*-top.cpp` source files and compiling them with their corresponding implementation files.

## File Naming Convention

- `name.c` / `name.cpp` — Implementation source
- `name.h` — Header file
- `name-top.c` / `name-top.cpp` — Test harness (main function)
- `name.tcl` — Vivado HLS project creation script
- `*.gold.dat` — Expected output for test verification
