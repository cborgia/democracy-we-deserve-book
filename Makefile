CHAPTERS = chapters/00-introduction.md \
           chapters/01-system-designed-to-fail.md \
           chapters/02-two-party-trap.md \
           chapters/03-follow-the-money.md \
           chapters/04-gerrymandering.md \
           chapters/05-ranked-choice-voting.md \
           chapters/06-open-primaries.md \
           chapters/07-proportional-representation.md \
           chapters/08-democracy-dollars.md \
           chapters/09-independent-redistricting.md \
           chapters/10-term-limits.md \
           chapters/11-states-leading.md \
           chapters/12-citizens-toolkit.md \
           chapters/13-democracy-we-deserve.md \
           chapters/14-appendix.md

METADATA = metadata.yaml
FILTER = filters/boxes.lua
OUTPUT_PDF = the-democracy-we-deserve.pdf
OUTPUT_EPUB = the-democracy-we-deserve.epub
OUTPUT_HTML = build/index.html

.PHONY: pdf epub html clean all

all: pdf epub

pdf: $(CHAPTERS) $(METADATA) $(FILTER)
	pandoc $(METADATA) $(CHAPTERS) \
		--lua-filter=$(FILTER) \
		--pdf-engine=xelatex \
		-o $(OUTPUT_PDF)

epub: $(CHAPTERS) $(METADATA)
	pandoc $(METADATA) $(CHAPTERS) \
		--toc --toc-depth=2 \
		-o $(OUTPUT_EPUB)

html: $(CHAPTERS) $(METADATA)
	mkdir -p build
	pandoc $(METADATA) $(CHAPTERS) \
		--standalone --toc --toc-depth=2 \
		--css=assets/style.css \
		-o $(OUTPUT_HTML)

clean:
	rm -f $(OUTPUT_PDF) $(OUTPUT_EPUB)
	rm -rf build/
