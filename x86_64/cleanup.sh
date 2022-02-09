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
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ..

echo " "
echo "[*]: Cleaning up extra"
cd extra
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ..

echo " "
echo "[*]: Cleaning up extra32"
cd extra32
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ..

echo " "
echo "[*]: Cleaning up linux-modules"
cd linux-modules
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ..


echo " "
echo "[*]: Cleaning up multilib"
cd multilib
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ..

echo " "
echo "[*]: Cleaning up desktop/*"
cd desktop
mv */*/*pkg.t* ../../pkgs/
cd xfce
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ../kde
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/ */*tgz */*tar.zst */*sign* */*sig* */*asc*
cd ../..


echo " "
echo "[*]: Done"
