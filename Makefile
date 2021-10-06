name = test

all: $(name).pdf

%.pdf: $(name).tex $(name).bib
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

clean:
	rm -f *.ilg *.aux *.log *.dvi *.idx *.toc *.lof *.lot *.out
	rm -f *.blg *.bbl *~ *.tmp *.mp *.tui
	rm -f $(name).pdf
