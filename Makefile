compiler=cargo

.PHONY: run

run: test
	$(compiler) $@

test: build
	$(compiler) $@

build: fmt
	$(compiler) $@

fmt: clean
	$(compiler) $@

clean:
	$(compiler) $@
