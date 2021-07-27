#!/bin/bash

pandoc --pdf-engine=xelatex \
  --wrap=preserve \
  -V CJKmainfont="WenQuanYi Micro Hei" \
  -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" \
  --highlight-style tango \
  --title $2 --toc -N \
  -o $2.pdf $1