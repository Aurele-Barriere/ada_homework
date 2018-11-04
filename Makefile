all: main.pdf

main.pdf: main.tex main.bib
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex

clean:
	-rm *.aux
	-rm *.bbl
	-rm *.log
	-rm *.blg
	-rm *.toc
	-rm main.pdf
