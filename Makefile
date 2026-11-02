.PHONY: help serve build post

help:
	@echo "make serve                 Start the Zola dev server on http://127.0.0.1:1111"
	@echo "make build                 Build the site into ./public"
	@echo "make post title=\"Title\"    Create content/blog/<slug>.md"

serve:
	zola serve

build:
	zola build

post:
	@if [ -z "$(title)" ]; then echo 'Usage: make post title="My Post Title"'; exit 1; fi
	@slug=$$(echo "$(title)" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alnum:]' '-' | sed 's/^-//;s/-$$//'); \
	file="content/blog/$$slug.md"; \
	if [ -e "$$file" ]; then echo "$$file already exists"; exit 1; fi; \
	printf '+++\ntitle = "%s"\ndescription = ""\ndate = %s\n\n[taxonomies]\ntags = []\n+++\n\n' "$(title)" "$$(date +%Y-%m-%d)" > "$$file"; \
	echo "Created $$file"
