# Define variables
HUGO=hugo
DIST_DIR=dist
CONTENT_DIR=content/posts

build: ## genera el sitio en dist/
	$(HUGO) -d $(DIST_DIR)

clean: ## elimina el contenido de dist/
	rm -rf $(DIST_DIR)/*

post: ## crea un nuevo post con variables de entorno
	@if [ -z "$(POST_NAME)" ] || [ -z "$(POST_TITLE)" ]; then \
		echo "ERROR: POST_NAME and POST_TITLE must be set"; \
		exit 1; \
	fi
	$(HUGO) new posts/$(POST_NAME).md
	sed -i "s/title: .*/title: \"$(POST_TITLE)\"/" $(CONTENT_DIR)/$(POST_NAME).md

help:  ## Show this help usage
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "%-10s: %s\n", $$1, $$2}'
