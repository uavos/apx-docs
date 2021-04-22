###########################################################################
#
# APX project makefile for the docs site
#
###########################################################################

view: FORCE
	@bundle exec jekyll serve


check: FORCE
	@bundle exec jekyll build
	@htmlproofer _site --disable-external --allow-hash-href

