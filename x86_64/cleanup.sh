#!/bin/bash
set +e

remove_leftovers() {
    cd $@

    echo " "
    echo "[*]: Cleaning up $1"

    rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*

    cd ..
}

echo " "
echo "[*]: Moving pkg's to pkg dir"
echo " "
mv */*/*pkg.t* ../../pkgs/

set -e

remove_leftovers core
remove_leftovers extra
remove_leftovers extra32
remove_leftovers linux-modules
remove_leftovers games
remove_leftovers multilib

echo " "
echo "[*]: Cleaning up desktop/*"
cd desktop
mv */*/*pkg.t* ../../../pkgs/

remove_leftovers xfce
cd ..

remove_leftovers kde
cd ../..

remove_leftovers server

echo " "
echo "[*]: Done"
