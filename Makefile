all:
	latexmk -pdf -shell-escape slides.tex

cleanAux:
	latexmk -c
	rm -f *.nav *.snm *.fdb_latexmk *.synctex.gz *.vrb
	rm -rf _minted-slides

clean: cleanAux
	rm -f slides.pdf