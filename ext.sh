#! /bin/bash

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
       -dFirstPage=7 -dLastPage=30 \
       -sOutputFile=chpt4.pdf drafts/thesis_draft_19Dec.pdf
