TEX=pandoc
TEXENGINE=xelatex
TEXFLAGS=--latex-engine $(TEXENGINE)

.SUFFIXES:

.SUFFIXES: .pdf .md

.md.pdf :
	$(TEX) $(TEXFLAGS) --template $(TEMPLATE) -o $@ $<

TEMPLATE=outline.template
PDFS=outline.pdf

all: $(PDFS)

