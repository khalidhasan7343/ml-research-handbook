# ML Research Handbook — build tooling (MIT licensed, see LICENSE-MIT)
#
#   make          build book/ML_Research_Handbook.pdf from source/
#   make check    rebuild into build/ and confirm the committed PDF matches source/
#   make watch    rebuild build/preview.pdf on every save (for writing)
#   make clean    remove build/
#
# Requires Typst 0.15 (https://typst.app). Every font the book needs is either
# built into Typst or bundled in source/fonts, so system fonts are ignored and
# the same source gives the same PDF on every machine.

PDF   := book/ML_Research_Handbook.pdf
SRC   := source
TYPST ?= typst
FLAGS := --root $(SRC) --font-path $(SRC)/fonts --ignore-system-fonts

# Fixed PDF creation date (2026-11-23 UTC) so rebuilds are byte-for-byte
# reproducible. Update it when you publish a new edition.
export SOURCE_DATE_EPOCH := 1795392000

SOURCES := $(shell find $(SRC) -type f)

.PHONY: all check watch clean

all: $(PDF)

$(PDF): $(SOURCES)
	$(TYPST) compile $(FLAGS) $(SRC)/main.typ $@

check:
	@mkdir -p build
	$(TYPST) compile $(FLAGS) $(SRC)/main.typ build/$(notdir $(PDF))
	@if cmp -s build/$(notdir $(PDF)) $(PDF); then \
	  echo "OK: $(PDF) matches source/"; \
	else \
	  echo "ERROR: $(PDF) is out of date with source/. Run 'make' and commit the new PDF."; \
	  exit 1; \
	fi

watch:
	@mkdir -p build
	$(TYPST) watch $(FLAGS) $(SRC)/main.typ build/preview.pdf

clean:
	rm -rf build
