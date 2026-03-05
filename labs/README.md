# Labs

Lab assignments and project materials for the pp4fpgas course (UCSD CSE 237C).

## Organization

The labs are organized by topic, matching the structure of the [course website](https://pp4fpgas.readthedocs.io). Each directory corresponds to one project or lab from the course.

### Course Website to Repository Mapping

| Website Page | Directory | Description |
|---|---|---|
| Project 1: FIR Filter | `FIR/` | FIR filter implementations (11-tap and 128-tap), Zedboard demo, and Xilinx tutorial PDFs |
| Project 2: CORDIC | `cordic/` | CORDIC algorithm (Demo and HLS implementations) |
| Project 2.5: Phase Detector | `phase_detector/` | Phase detector combining complex FIR and CORDIC (Demo, HLS, Simulink) |
| Project 3: DFT | `DFT/` | Discrete Fourier Transform with precomputed coefficient variants (8, 32, 256, 1024 point) |
| Project 4: FFT | `FFT/` | Fast Fourier Transform with staged HLS implementations |
| Project 4.5: OFDM Receiver | `OFDM/` | OFDM receiver integrating FFT and QPSK decoder (HLS and Simulink) |

### Additional Directories

| Directory | Description |
|---|---|
| `axi4_burst/` | AXI4 burst interface lab |
| `Vivado_HLS_Tutorial/` | Full Vivado HLS tutorial with exercises and Xilinx documentation (prerequisite for the FIR project) |
| `images/` | Lab-specific images |

## Notes

- **DFT starter code:** `DFT/dft_1024_precomputed/` contains the advanced 4-argument implementation while `DFT/dft_1024_starter/` contains a simpler 2-argument starter version. Both have the same precomputed coefficients.
- **Vivado HLS Tutorial:** The exercises in `Vivado_HLS_Tutorial/` cover arbitrary precision, C validation, design analysis, optimization, interface synthesis, and RTL verification. Students should complete Labs 1-3 before starting the FIR project.
- **FIR Tutorial folder:** `FIR/Tutorial/` contains Xilinx reference documentation (ug871, ug902) for Vivado HLS.

## Running Labs

Labs require Xilinx Vivado HLS (now Vitis HLS). Most directories include `script.tcl` files for creating HLS projects automatically. Run `vivado_hls script.tcl` from the lab directory to set up and synthesize a project.
