#!/bin/bash
set +e

echo " "
echo "[*]: Moving pkg's to pkg dir"
echo " "
mv */*/*pkg.t* ../pkgs/

set -e
echo " "
echo "[*]: Cleaning up core"
cd core
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*/tgz
cd ..

echo " "
echo "[*]: Cleaning up extra"
cd extra
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*/tgz
cd ..

echo " "
echo "[*]: Done"
