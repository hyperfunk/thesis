TEX=pandoc
TEXENGINE=xelatex
TEXFLAGS=--latex-engine $(TEXENGINE)
RM=rm

.SUFFIXES:

.SUFFIXES: .pdf .md .template

%.pdf: %.md
	$(TEX) $(TEXFLAGS) --template $(patsubst %.md,%.template,$<) -o $@ $<

PDFS=outline.pdf

all: $(PDFS)

clean:
		-$(RM) -f $(PDFS)
