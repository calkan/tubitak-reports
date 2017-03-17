
PAPER = tubitak-final-report

TEX = $(wildcard ./*.tex) 

.PHONY: all, clean
all: $(TEX)
	wget -nc https://www.tubitak.gov.tr/sites/default/files/tubitak_logo.jpg
	pdflatex $(PAPER) 
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -rf *.dvi *.log *.aux *.bbl *.blg *.pdf

