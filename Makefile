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
FILTER   = filters/boxes.lua
TEMPLATE = templates/book.latex

.PHONY: all pdf epub kindle html clean

all: pdf epub html

# Print-ready PDF (6x9 trade paperback)
pdf: $(CHAPTERS) $(METADATA) $(FILTER) $(TEMPLATE)
	pandoc $(METADATA) $(CHAPTERS) \
		--lua-filter=$(FILTER) \
		--template=$(TEMPLATE) \
		--pdf-engine=xelatex \
		--top-level-division=chapter \
		-o the-democracy-we-deserve.pdf

# ePub (Apple Books, Kobo, general readers)
epub: $(CHAPTERS) $(METADATA)
	pandoc $(METADATA) $(CHAPTERS) \
		--toc --toc-depth=2 \
		--css=assets/epub.css \
		--epub-chapter-level=1 \
		--top-level-division=chapter \
		-o the-democracy-we-deserve.epub

# Kindle-optimized ePub (upload to KDP, they convert)
kindle: $(CHAPTERS) $(METADATA)
	pandoc $(METADATA) $(CHAPTERS) \
		--toc --toc-depth=2 \
		--css=assets/epub.css \
		--epub-chapter-level=1 \
		--top-level-division=chapter \
		-o the-democracy-we-deserve-kindle.epub

# HTML preview
html: $(CHAPTERS) $(METADATA)
	mkdir -p build
	pandoc $(METADATA) $(CHAPTERS) \
		--standalone --toc --toc-depth=2 \
		--css=assets/style.css \
		--top-level-division=chapter \
		-o build/index.html

clean:
	rm -f *.pdf *.epub
	rm -rf build/
