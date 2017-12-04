all:
	make build

build-deps:
	opam install atdget-example --deps-only

build:
	jbuilder build --dev

test:
	@jbuilder runtest --dev

clean:
	@jbuilder clean

.PHONY: all test build-deps clean
