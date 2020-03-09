compiler=cargo

.PHONY: run

run: build
	$(compiler) $@

build: clean
	$(compiler) $@

clean:
	$(compiler) $@
