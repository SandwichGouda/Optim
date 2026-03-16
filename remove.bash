set -e  # exit on any error
trap "echo 'Interrupted'; exit 1" INT # what to do when INT (interrupt) is catched

if [[ "$1" != "--no-clean" ]]; then
    rm *.aux *.toc *.log *.out *.blg *.bbl
fi