# vim: tabstop=8 shiftwidth=8 noexpandtab
# makefile for pdflatex

INPUT  = thesis
DATE   = $(shell date "+%d%b")
OUTPUT = drafts/thesis_draft_$(DATE)

TEX = pdflatex -interaction nonstopmode -jobname $(OUTPUT)
BIB = bibtex
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
	chromium --app=file://$(CURDIR)/$(OUTPUT).html

shortsum:
	@./texcount.pl -inc -brief $(INPUT).tex 2>&1 | \
		awk '/total/{print $1}'

push:
	cd chapters; git push origin master
	git push origin master

todo:
	@cd chapters; git grep --color=never -n1 todoi > ../todos.todo
	@cd chapters; git grep --color=never -n1 cite{null} > ../citations.todo

ic:
	scp $(OUTPUT).pdf sr505@lx06:public_html/99/thesis_draft.pdf

%.pdf: %.md
	$(MD) $(MDFLAGS) \
		-V mainfont=$(MAINFONT) \
		-V geometry=$(GEOMETRY) \
		-V fontsize=$(FONTSIZE) \
		-o $@ $<
