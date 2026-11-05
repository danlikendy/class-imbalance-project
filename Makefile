
PDFS = main.pdf

.PHONY: all clean

all: main.pdf

INCLUDES = include/*.tex

PARTS = parts/*.tex

MAIN = main.tex

main.pdf: $(MAIN) $(PARTS) $(INCLUDES) references.bib gost71u.bst
	pdflatex -interaction=nonstopmode main.tex
	bibtex main
	pdflatex -interaction=nonstopmode main.tex
	pdflatex -interaction=nonstopmode main.tex

clean:
	rm -f main.aux main.bbl main.blg main.log main.out main.toc main.pdf
