#! /bin/bash

DATE=`date "+%d%b"`

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
       -dFirstPage=$1 -dLastPage=$2 \
       -sOutputFile=$3.pdf drafts/thesis_draft_$DATE.pdf
