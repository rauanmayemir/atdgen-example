all:
	make build

build-deps:
	opam install atdgenexample --deps-only

build:
	jbuilder build --dev

test:
	jbuilder runtest --dev

clean:
	jbuilder clean

.PHONY: all test build-deps clean
