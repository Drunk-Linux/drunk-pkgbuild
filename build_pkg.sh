#!/bin/bash

function run_cmd() {
	shopt -s globstar
	for d in ./*/ ; do
		cd "$d"
		$@
		rm -rf src/
		rm -rf pkg/
		cd ..
	done
}

run_cmd "makepkg --skipint -d"
