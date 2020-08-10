#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -e

mkdir -p "${DIR}/patched"
cd "${DIR}/src"
rm -Rf "dist"
"${DIR}/utils/apktool.sh" b

APK="$(basename "$(find "dist" -name "*.apk" -type f -print -quit)")"
APK_PATCHED="${APK%.*}-patched.apk"

bash "${DIR}/utils/uber-apk-signer.sh" \
  --apks "${DIR}/src/dist/${APK}" \
  --out "${DIR}/src/dist/signed" \
  --ks "${DIR}/keystore.jks" \
  --ksAlias "app" \
  --ksPass "dexcom1234" \
  --ksKeyPass "dexcom1234"

APK_SIGNED="$(basename "$(find "dist/signed" -name "*.apk" -type f -print -quit)")"

cp "${DIR}/src/dist/signed/${APK_SIGNED}" "${DIR}/patched/${APK_PATCHED}"
rm -Rf "${DIR}/src/dist"

echo "--------------------------------------------"
echo " Compiled & signed APK was written to:"
echo " ${DIR}/src/patched/${APK_PATCHED}"
echo "--------------------------------------------"
