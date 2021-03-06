.ONESHELL:
SHELL := bash

.PHONY: run
run:
	goroot/bin/go tool go2go run cmd/main.go2

.PHONY: compiler
compiler:
	if [ ! -d goroot ] ; then
		git clone https://github.com/golang/go.git goroot
	fi
	cd goroot
	git checkout dev.go2go
	git pull
	cd src
	./make.bash
