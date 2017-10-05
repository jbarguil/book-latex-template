#!/bin/bash

pdflatex main
makeindex main.idx -s StyleInd.ist
biber main
pdflatex main
pdflatex main

if  [ $# = 1 -a $1 = "-pdf" ]; then
    evince main.pdf
fi
