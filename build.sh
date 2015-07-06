#!/bin/bash
#build pdf (with bibtex), by defualt do a quick build
"/usr/texbin/pdflatex" -synctex=1 -shell-escape -interaction=nonstopmode heading.tex
if [ "$1" == "-f" ]; then #add -f flag to do full build
	bibtex asme2e
	makeindex heading.nlo  -s nomencl.ist -o heading.nls
	"/usr/texbin/pdflatex" -synctex=1 -shell-escape -interaction=nonstopmode heading.tex
	"/usr/texbin/pdflatex" -synctex=1 -shell-escape -interaction=nonstopmode heading.tex

fi
#. clean.sh
