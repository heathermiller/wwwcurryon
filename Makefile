GEM_CACHE_DIR := .gem-cache

.PHONY: run generate docker-build

run:
	[ -d $(GEM_CACHE_DIR) ] || mkdir -p $(GEM_CACHE_DIR)
	[ -d _site ] || mkdir _site
	docker run \
      --name curryon \
      --rm \
      -v "$$PWD/$(GEM_CACHE_DIR):/usr/local/bundle" \
      -v "$$PWD:/srv/jekyll" \
      -p 4000:4000 \
      jekyll/jekyll \
      jekyll serve

generate:
	_tools/download-sheet.sh && _tools/extract-abstracts.R
