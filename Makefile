TITLE = The Democracy We Deserve
AUTHOR = Chris Borgia
SOURCES = src/introduction.md $(wildcard src/ch*.md) src/appendix.md

.PHONY: serve build pdf epub clean

serve:
	mdbook serve --open

build:
	mdbook build

pdf: $(SOURCES)
	cat $(SOURCES) | pandoc -o the-democracy-we-deserve.pdf \
		--toc --toc-depth=2 \
		-V geometry:margin=1in \
		-V fontsize=12pt \
		--metadata title="$(TITLE)" \
		--metadata author="$(AUTHOR)"

epub: $(SOURCES)
	cat $(SOURCES) | pandoc -o the-democracy-we-deserve.epub \
		--toc --toc-depth=2 \
		--metadata title="$(TITLE)" \
		--metadata author="$(AUTHOR)"

clean:
	rm -rf book/ *.pdf *.epub
