#!/bin/bash
set +e

set -e
echo " "
echo "[*]: Cleaning up core"
cd core
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/
cd ..

echo " "
echo "[*]: Cleaning up extra"
cd extra
rm -rf */pkg/ */src/ */*pkg* */*xz* */*tar.gz */*tar.bz2 */*.zip */*/
cd ..

echo " "
echo "[*]: Done"
