set -e  # exit on any error
trap "echo 'Interrupted'; exit 1" INT # what to do when INT (interrupt) is catched

pdflatex Optimization\ and\ beyond.tex
bibtool -s -i bib/articles.bib -o bib/articles.bib
bibtool -s -i bib/books.bib -o bib/books.bib
bibtool -s -i bib/misc.bib -o bib/misc.bib
bibtex Optimization\ and\ beyond
pdflatex Optimization\ and\ beyond.tex
pdflatex Optimization\ and\ beyond.tex
explorer.exe Optimization\ and\ beyond.pdf

if [[ "$1" != "--no-clean" ]]; then
    rm *.aux *.toc *.log *.out *.blg *.bbl
fi