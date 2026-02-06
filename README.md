# pp4fpgas
Parallel Programming for FPGAs

[![GitHub Actions Status: CI](https://github.com/Ray149s/pp4fpgas/workflows/CI%2FCD/badge.svg)](https://github.com/Ray149s/pp4fpgas/actions?query=workflow%3ACI%2FCD)
[![GitHub Actions Status: Deploy](https://github.com/Ray149s/pp4fpgas/workflows/Deploy%20build/badge.svg)](https://github.com/Ray149s/pp4fpgas/actions?query=workflow%3A"Deploy+build"+branch%3Amaster)

Ryan Kastner, Janarbek Matai, and Stephen Neuendorffer

An open-source high-level synthesis book

http://hls.ucsd.edu/

## Background

Parallel Programming for FPGAs is an open-source book aimed at teaching hardware and software developers how to efficiently program FPGAs using high-level synthesis (HLS). The authors developed the book as we noticed a lack of material aimed at teaching people to effectively use HLS tools.

The book was developed over many years to serve as a primary reference for [UCSD 237C](http://kastner.ucsd.edu/ryan/cse237c/) — a hardware design class targeting first-year graduate students and advanced undergraduate students. We hope that you find it useful for learning more about HLS, FPGAs, and system-on-chip design.

The book is licensed under the [Creative Commons Attribution 4.0 International License](LICENSE). We encourage you to make edits, add material, and fix errors. Thanks to those who have made pull requests over the years. Please keep them coming!

Some fine people have translated this book into Mandarin - [pp4fpgas-ch](https://github.com/xupsh/pp4fpgas-cn)

> **Note:** This is a cleaned-up fork of [KastnerRG/pp4fpgas](https://github.com/KastnerRG/pp4fpgas). Historical ZIP archives from the original repo are available in the [v0.0-historical-archive release](https://github.com/Ray149s/pp4fpgas/releases/tag/v0.0-historical-archive).

## Building the Book

### Prerequisites

- **TeX Live** (full distribution recommended)
- **Inkscape** (1.0 or later) — used to convert SVG figures to PDF
- **Make**

### Build Commands

```bash
make all      # Build main.pdf
make clean    # Remove build artifacts
```

The build uses `pdflatex` with `-shell-escape` to invoke Inkscape for SVG-to-PDF conversion. On first build, all SVG figures in `figures/` are converted to PDF in `images/`.

## Repository Structure

```
.
├── main.tex              # Master document (includes all chapters)
├── *.tex                 # Chapter files (fir, cordic, dft, fft, etc.)
├── all.bib               # Bibliography
├── figures/              # SVG source figures (converted to PDF at build time)
├── images/               # Generated PDFs, PNGs, and other images
├── examples/             # C/C++ HLS code examples for all chapters
├── labs/                 # Lab assignments and project materials
│   ├── axi4_burst/       # AXI4 burst lab
│   ├── cordic/           # CORDIC lab
│   ├── DFT/              # DFT lab
│   ├── FFT/              # FFT lab
│   ├── phase_detector/   # Phase detector lab
│   ├── project1-4/       # Course projects
│   ├── Lab1/             # Vivado HLS tutorial labs
│   └── Vivado_HLS_Tutorial/
└── .github/workflows/    # CI/CD for building and deploying the PDF
```

## Citation

If you want to cite this book, please use the arxiv submission:
```
@ARTICLE{2018arXiv180503648K,
author = {{Kastner}, R. and {Matai}, J. and {Neuendorffer}, S.},
title = "{Parallel Programming for FPGAs}",
journal = {ArXiv e-prints},
archivePrefix = "arXiv",
eprint = {1805.03648},
keywords = {Computer Science - Hardware Architecture},
year = 2018,
month = may
}
```
