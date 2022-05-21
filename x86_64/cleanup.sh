#!/bin/bash

remove_leftovers() {
    iam=$1

    cd $@

    set +e
    echo " "
    echo "[*]: Moving $iam pkgs to proper place"
    mv */*pkg.t* ../../pkgs/$iam/
    set -e
    echo "[*]: Cleaning up $iam"

    rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*

    cd ..
}

set -e

remove_leftovers core
remove_leftovers cross-tools
remove_leftovers extra
remove_leftovers extra32
remove_leftovers games
remove_leftovers layers
remove_leftovers proprietary
remove_leftovers server

remove_leftovers_desktop() {
    iam=$1

    cd $@

    set +e
    echo " "
    echo "[*]: Moving desktop/$iam pkgs to proper place"
    mv */*pkg.t* ../../../pkgs/desktop/$iam/
    set -e

    echo " "
    echo "[*]: Cleaning up $iam"

    rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*

    cd ..
}

cd desktop

remove_leftovers_desktop xfce

remove_leftovers_desktop kde

remove_leftovers_desktop server

echo " "
echo "[*]: Done"
