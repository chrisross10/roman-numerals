.PHONY: build test

default: build test

build:
	docker build -t roman_numerals .

test:
	docker run \
	roman_numerals \
	rake
