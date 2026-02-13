#!/bin/bash
set -e

cd "$(dirname "$0")/GregGrahamCV"
lualatex cv.tex
mv cv.pdf ../GregGrahamCV.pdf
echo "Build complete: GregGrahamCV.pdf"