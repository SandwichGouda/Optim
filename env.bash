codehere() {
    if [[ $PWD == /mnt/c* ]]; then
        /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "code 'C:\\$(echo $(echo $PWD | cut -c8-) | tr "/" "\\\\")'"
    else
        echo "You are not inside the Windows filesystem (/mnt/c)."
    fi
}

newlatex() {
    cd ../LaTeXCheatsheet
    pdflatex latex.tex
    explorer.exe latex.pdf
    cd ../Optim
}

optim() {
    cd "/mnt/c/Users/William (Lucie)/Documents/Computer programming/Optim"
    /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "code 'C:\\Users\\William (Lucie)\\Documents\\Computer programming\\optim.code-workspace'"
}

pdfoptim() {
    pdflatex Optimization\ and\ beyond.tex
    bibtex Optimization\ and\ beyond
    pdflatex Optimization\ and\ beyond.tex
    pdflatex Optimization\ and\ beyond.tex
    explorer.exe Optimization\ and\ beyond.pdf

    if [[ "$1" != "--no-clean" ]]; then
        rm *.aux *.toc *.log *.out *.blg *.bbl
    fi
}