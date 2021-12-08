#!/bin/bash

function build_extras() {
        shopt -s globstar
        for d in ./*/ ; do
                cd "$d"
                $@
                rm -rf src/
                rm -rf pkg/
                cd ..
        done
}

build_extras "makepkg --skipint -d"
