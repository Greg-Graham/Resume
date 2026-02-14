#!/bin/bash
set -e

cd "$(dirname "$0")/GregGrahamCV"
/Library/TeX/Distributions/Programs/texbin/lualatex cv.tex
mv cv.pdf ../GregGrahamCV.pdf
echo "Build complete: GregGrahamCV.pdf"