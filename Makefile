.PHONY: run generate

run:
	bundler exec jekyll serve

generate:
	_tools/download-sheet.sh && _tools/extract-abstracts.R
