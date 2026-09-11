#!/bin/sh
# Пересборка схем: figs_src/*.tex -> figs/*.pdf
# figNN.tex — схемы части I (шары); sqNN.tex — тривиальные упаковки квадратов.
cd "$(dirname "$0")"
for f in fig*.tex sq*.tex; do pdflatex -interaction=nonstopmode "$f" >/dev/null || exit 1; done
mkdir -p ../figs
for f in fig*.pdf; do cp "$f" ../figs/; done
for f in sq*.pdf; do n=$(basename "$f" .pdf); cp "$f" "../figs/${n#sq}.pdf"; done
rm -f *.aux *.log *.pdf
echo "готово"
