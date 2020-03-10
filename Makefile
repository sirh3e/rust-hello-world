compiler=cargo
docker_image_name="rust-hello-world"

.PHONY: run

run: test
	$(compiler) $@

build: test
	$(compiler) $@

test: fmt
	$(compiler) $@

fmt: clean
	$(compiler) $@

clean:
	$(compiler) $@

release:
	$(compiler) build --release

docker_run: docker_build
	docker run -it $(docker_image_name)

docker_build: test
	docker build -t $(docker_image_name) .
