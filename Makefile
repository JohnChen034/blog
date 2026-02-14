DOCS_DIR := docs
DATE := $(shell date +%F)
SLUG ?= new
SHELL := /bin/bash



new:
	@year="$(DATE:0:4)"; month="$(DATE:5:2)"; \
	dir="$(DOCS_DIR)/$$year/$$month"; \
	mkdir -p "$$dir"; \
	f="$$dir/$(DATE)-$(SLUG).md"; \
	if [ -e "$$f" ]; then echo "exists: $$f"; exit 1; fi; \
	printf -- "---\ntitle: %s\ndate: %s\nmusic_link:\n---\n\n" "$(SLUG)" "$(DATE)" > "$$f"; \
	echo "created $$f"
	@$(MAKE) organize SILENT=1

# ------------------------------------------
# Organize existing root-level md by YYYY/MM
# Only moves: docs/*.md that start with YYYY-MM-DD
# ------------------------------------------
organize:
	@set -e; \
	find "$(DOCS_DIR)" -maxdepth 1 -type f -name "*.md" -print0 | \
	while IFS= read -r -d '' f; do \
	  bn="$$(basename "$$f")"; \
	  if [[ "$$bn" =~ ^([0-9]{4})-([0-9]{2})-([0-9]{2}) ]]; then \
	    y="$${BASH_REMATCH[1]}"; m="$${BASH_REMATCH[2]}"; \
	    dir="$(DOCS_DIR)/$$y/$$m"; \
	    mkdir -p "$$dir"; \
	    dest="$$dir/$$bn"; \
	    if [ -e "$$dest" ]; then \
	      echo "skip (dest exists): $$dest"; \
	    else \
	      mv "$$f" "$$dest"; \
	      echo "moved: $$bn -> $$y/$$m/"; \
	    fi; \
	  else \
	    echo "skip (no date prefix): $$bn"; \
	  fi; \
	done


prep:
	@python3 scripts/normalize_posts.py
	@$(MAKE) organize SILENT=1