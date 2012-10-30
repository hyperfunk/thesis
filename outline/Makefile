TEX=pandoc
TEXENGINE=xelatex
TEXFLAGS=--latex-engine $(TEXENGINE)
RM=rm

.SUFFIXES:

.SUFFIXES: .pdf .md

.md.pdf :
	$(TEX) $(TEXFLAGS) --template $(TEMPLATE) -o $@ $<

TEMPLATE=outline.template
PDFS=outline.pdf

all: $(PDFS)

clean:
		-$(RM) -f $(PDFS)
