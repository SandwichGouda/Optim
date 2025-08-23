set -e  # exit on any error
trap "echo 'Interrupted'; cd ../Optim ; exit 1" INT # what to do when INT (interrupt) is catched

cd ../LaTeXCheatsheet
pdflatex latex.tex
explorer.exe latex.pdf
# if run with the source command, the script will not come back to the Optim directory