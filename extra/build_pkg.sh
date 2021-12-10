#!/bin/bash

folders=(itstool)

function build_extras() {
        shopt -s globstar
        for d in ${folders[@]} ; do
                cd "$d"
                $@
                rm -rf src/
                rm -rf pkg/
                cd ..
        done
}

build_extras "makepkg --skipint -d"
