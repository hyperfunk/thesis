#! /bin/bash

DATE=`date "+%d%b"`

FIRST_PAGE=$1
FINAL_PAGE=$2
OUTFILE=$3

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
       -dFirstPage=$FIRST_PAGE -dLastPage=$FINAL_PAGE \
       -sOutputFile=$OUTFILE.pdf drafts/thesis_draft_$DATE.pdf
