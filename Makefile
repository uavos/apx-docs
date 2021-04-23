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


