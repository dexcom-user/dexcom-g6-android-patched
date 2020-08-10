#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -e

APK="${1}"
if [ ! -f "${APK}" ]; then
  echo "Please specify an APK file as first argument!"
  exit 1
fi

SRC_DIR="${DIR}/src"
rm -Rf "${SRC_DIR}"

"${DIR}/utils/apktool.sh" d \
  --no-debug-info \
  --output "${SRC_DIR}" \
  "${APK}"
