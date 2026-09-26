ARTICLE  := third-and-higher-order-odes.md
PREAMBLE := preamble.tex
FIG_SRC  := $(filter-out figures/figure-style.tex,$(wildcard figures/*.tex))
FIGURES  := $(FIG_SRC:.tex=.pdf)
PDF      := third-and-higher-order-odes.pdf

.PHONY: pdf figures clean
pdf: $(PDF)
figures: $(FIGURES)
$(PDF): $(ARTICLE) $(PREAMBLE) $(FIGURES) Makefile
	mkdir -p build
	TMPDIR=$(CURDIR)/build pandoc $(ARTICLE) --from markdown+tex_math_dollars --pdf-engine=xelatex --include-in-header=$(PREAMBLE) -o $@
figures/%.pdf: figures/%.tex figures/figure-style.tex
	mkdir -p build
	cd figures && xelatex -interaction=nonstopmode -halt-on-error -output-directory=../build $*.tex > /dev/null
	cp build/$*.pdf $@
clean:
	rm -rf build
