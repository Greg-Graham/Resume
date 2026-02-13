#!/bin/bash

cd "$(dirname "$0")"
rm -f cv.log
rm -f GregGrahamCV/*.aux GregGrahamCV/*.log GregGrahamCV/*.out GregGrahamCV/*.synctex.gz
rm -f GregGrahamCV/*.fls GregGrahamCV/*.fdb_latexmk GregGrahamCV/*.bbl GregGrahamCV/*.bcf
rm -f GregGrahamCV/*.blg GregGrahamCV/*.run.xml GregGrahamCV/*.toc GregGrahamCV/*.lof GregGrahamCV/*.lot
echo "Clean complete."