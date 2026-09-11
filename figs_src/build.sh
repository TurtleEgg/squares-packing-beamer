#!/bin/sh
# Пересборка схем части I: figs_src/figNN.tex -> figs/figNN.pdf
cd "$(dirname "$0")"
for f in fig*.tex; do pdflatex -interaction=nonstopmode "$f" >/dev/null || exit 1; done
mkdir -p ../figs && cp fig*.pdf ../figs/
rm -f *.aux *.log
echo "готово: $(ls -1 ../figs/fig*.pdf | wc -l) схем"
