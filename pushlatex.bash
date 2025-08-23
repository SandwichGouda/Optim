set -e  # exit on any error
trap "echo 'Interrupted'; exit 1" INT # what to do when INT (interrupt) is catched

cd ../LaTeXCheatsheet/
git add . 
git commit -m "$1"
git push
cd ../Optim