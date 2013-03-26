# vim: tabstop=8 shiftwidth=8 noexpandtab
# makefile for pdflatex

INPUT  = thesis
DATE   = $(shell date "+%d%b")
OUTPUT = drafts/thesis_draft_$(DATE)

TEX = pdflatex -interaction nonstopmode -jobname $(OUTPUT)
BIB = bibtex
VIEW = zathura

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

push:
	cd chapters; git push origin master
	git push origin master
