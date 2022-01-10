#/bin/bash

echo "[!]: Cleaning up x86_64"
cd x86_64
./cleanup.sh
cd ..

echo "[!]: Cleaning up i686"
cd i686
./cleanup.sh
cd ..

echo "[!]: Cleaning up aarch64"
cd aarch64
./cleanup.sh
cd ..
