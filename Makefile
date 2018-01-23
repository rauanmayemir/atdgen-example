all: build

build-deps:
	@esy install

build:
	@esy build

test:
	@esy jbuilder runtest --dev

clean:
	@esy jbuilder clean

.PHONY: all test build-deps clean
