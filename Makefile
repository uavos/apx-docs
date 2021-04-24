###########################################################################
#
# APX project makefile for the docs site
#
###########################################################################

view:
	@bundle exec jekyll serve


check:
	@bundle exec jekyll build
	@htmlproofer _site --disable-external --allow-hash-href


FILES = $(shell find _data ! -name _data ! -name sections.yml)
FILES += _docs/fw
FILES += _docs/hw
FILES += _docs/gcs

clean:
	@rm -rf $(FILES)

	