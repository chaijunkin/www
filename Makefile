.PHONY: serve build clean new

# Serve the site locally with drafts enabled
serve:
	hugo server -D

# Build the static site into the public directory
build:
	hugo --gc --minify

# Clean up generated files
clean:
	rm -rf public/
	rm -rf resources/_gen/

# Create a new blog post (usage: make new title="my-new-post")
new:
	hugo new content/blogs/$(title).md
