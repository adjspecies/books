.PHONY: build
build:
	# Run twice for references.
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex

.PHONY: watch
watch:
	while true; do \
		inotifywait -r --exclude=".*sw[px]$$" -e modify -e create -e delete -e move .; \
		$(MAKE) build; \
		echo "\033[1;32m-- Done rebuilding\033[0m"; \
	done

.PHONY: sysdeps
sysdeps:
	sudo apt-get install tex4ht texlive xzdec

.PHONY: update-texdeps
update-texdeps:
	tlmgr update --all
