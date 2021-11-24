#!/bin/bash
set +e

set -e
echo " "
echo "[*]: Cleaning up"
rm -rf */pkg/ */src/ */*pkg* */*xz*
