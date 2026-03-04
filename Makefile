all: main.pdf

main.aux: all.bib main.tex chapters/*.tex
	pdflatex -shell-escape \\nonstopmode\\input main.tex
	bibtex main

main.pdf: main.aux main.tex chapters/*.tex figures/*.svg
	pdflatex -shell-escape \\nonstopmode\\input main.tex
	pdflatex -shell-escape \\nonstopmode\\input main.tex

clean:
	rm -f main.pdf *.log *~ *.aux *.bbl *.blg *.out *.toc *.lof *.lot *.synctex.gz

.PHONY: all clean
