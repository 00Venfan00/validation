# Define variables
HUGO=hugo
DIST_DIR=dist
CONTENT_DIR=content/posts

# Build: genera el sitio en dist/
build:
	$(HUGO) -d $(DIST_DIR)

# Clean: elimina el contenido de dist/
clean:
	rm -rf $(DIST_DIR)/*

# Post: crea un nuevo post con variables de entorno
post:
	@if [ -z "$(POST_NAME)" ] || [ -z "$(POST_TITLE)" ]; then \
		echo "ERROR: POST_NAME and POST_TITLE must be set"; \
		exit 1; \
	fi
	$(HUGO) new posts/$(POST_NAME).md
	sed -i "s/title: .*/title: \"$(POST_TITLE)\"/" $(CONTENT_DIR)/$(POST_NAME).md
