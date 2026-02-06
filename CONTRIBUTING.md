# Contributing to pp4fpgas

Thank you for your interest in improving this textbook! We welcome pull requests for fixes, improvements, and new content.

## Getting Started

### Prerequisites

- **TeX Live** (full distribution recommended)
- **Inkscape 1.0+** — converts SVG figures to PDF at build time
- **Make**

### Building the Book

```bash
git clone https://github.com/Ray149s/pp4fpgas.git
cd pp4fpgas
make all    # Produces main.pdf
```

The first build will invoke Inkscape to convert all SVG figures in `figures/` to PDF files in `images/`. Subsequent builds only re-convert SVGs that have changed.

## Project Structure

- **Chapter files** (`.tex`) are in the repository root. `main.tex` is the master document.
- **SVG figures** go in `figures/`. The `\includesvg{name}` macro handles conversion automatically.
- **Generated images** (PDF, PDF_TEX) end up in `images/` and should not be committed.
- **Code examples** go in `examples/`. Name files with the `topic_variant.c` convention.
- **Lab materials** go in `labs/` under the appropriate subdirectory.

## SVG Figure Pipeline

When you add or modify an SVG figure:

1. Place the `.svg` file in `figures/`
2. Reference it in your `.tex` file with `\includesvg{filename}` (no extension, no path prefix)
3. The build system calls Inkscape to generate `images/filename.pdf` and `images/filename.pdf_tex`
4. Do **not** commit the generated PDF/PDF_TEX files — only commit the source SVG

## Submitting Changes

1. Fork the repository
2. Create a feature branch
3. Make your changes and verify the book builds with `make all`
4. Submit a pull request with a clear description of your changes
