TEX=pandoc
TEXENGINE=xelatex
TEXFLAGS=--latex-engine $(TEXENGINE)
RM=rm

MAINFONT="DejaVuSans"
FONTSIZE="11pt"
GEOMETRY="margin=1in"

.SUFFIXES:

.SUFFIXES: .pdf .md

%.pdf: %.md
	$(TEX) $(TEXFLAGS) \
		-V mainfont=$(MAINFONT) \
		-V geometry=$(GEOMETRY) \
		-V fontsize=$(FONTSIZE) \
		-o $@ $<

PDFS=outline.pdf

all: $(PDFS)

clean:
		-$(RM) -f $(PDFS)
