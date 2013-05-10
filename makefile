# vim: tabstop=8 shiftwidth=8 noexpandtab
# makefile for pdflatex

INPUT  = thesis
DATE   = $(shell date "+%d%b")
OUTPUT = drafts/thesis_draft_$(DATE)

TEX = pdflatex -interaction nonstopmode -jobname $(OUTPUT)
BIB = biber
VIEW = zathura

MD=pandoc
TEXENGINE=xelatex
MDFLAGS=--latex-engine $(TEXENGINE)
RM=rm

MAINFONT="DejaVuSans"
FONTSIZE="11pt"
GEOMETRY="margin=1in"



.SUFFIXES: .pdf .md

$(OUTPUT).pdf: $(INPUT).tex mythesis.sty mythesis.cls chapters/*.tex
	( \
	$(TEX) $(INPUT); \
	$(BIB) $(OUTPUT); \
	while grep -q "Rerun to get cross-references right." $(OUTPUT).log; \
	do \
		$(TEX) $(INPUT); \
	done \
	)

clean::
	rm -fv *.aux chapters/*.aux *.log *.bbl *.blg *.toc *.fls *.cut *.out *.lot *.lof thesis_*.pdf

bib:  	thesis.bib
	$(BIB) $(OUTPUT)

show: $(OUTPUT).pdf
	$(VIEW) $(OUTPUT).pdf &

test::
	$(TEX) -draftmode $(INPUT)

once::
	$(TEX) $(INPUT)


spell:
	aspell -t check ${INPUT}.tex

summary:
	./texcount.pl -inc -html -v -sum $(INPUT).tex > \
		$(OUTPUT).html
	dwb -n file://$(CURDIR)/$(OUTPUT).html

shortsum:
	@./texcount.pl -inc -brief $(INPUT).tex 2>&1 | \
		awk '/total/{print $1}'

push:
	cd chapters; git push origin master
	git push origin master

ic:
	scp $(OUTPUT).pdf sr505@lx06:public_html/99/thesis_draft.pdf

corrections: corrections/*.pdf

printable:
	pdf2ps $(OUTPUT).pdf $(OUTPUT).ps
	psnup -pa4 -2 $(OUTPUT).ps printable.ps
	rm $(OUTPUT).ps
	ps2pdf printable.ps printable.pdf && rm printable.ps

final:
	cp $(OUTPUT).pdf thesis.pdf


%.pdf: %.md
	$(MD) $(MDFLAGS) \
		-V mainfont=$(MAINFONT) \
		-V geometry=$(GEOMETRY) \
		-V fontsize=$(FONTSIZE) \
		-o $@ $<
