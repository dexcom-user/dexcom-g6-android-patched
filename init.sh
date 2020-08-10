#!/usr/bin/env bash

APKTOOL_VERSION="2.4.1"
BCV_VERSION="2.9.22"
JADX_VERSION="1.1.0"
RACCOON_VERSION="4.15.0"
SIGNER_VERSION="1.1.0"

#
# start initialization
#

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -e

#
# download Apktool
# https://ibotpeaches.github.io/Apktool/
#

APKTOOL="${DIR}/utils/apktool-${APKTOOL_VERSION}.jar"
if [ -f "${APKTOOL}" ]; then
  echo "Apktool ${APKTOOL_VERSION} is already available..."
else
  echo "Downloading Apktool ${APKTOOL_VERSION}..."
  wget -O "${APKTOOL}" "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_${APKTOOL_VERSION}.jar"
  cd "${DIR}/utils"
  rm -f "apktool.jar"
  ln -s "$(basename "${APKTOOL}")" "apktool.jar"
fi

#
# download Bytecode Viewer
# https://bytecodeviewer.com/
#

BCV="${DIR}/utils/bcv-${BCV_VERSION}.jar"
if [ -f "${BCV}" ]; then
  echo "Bytecode Viewer ${BCV_VERSION} is already available..."
else
  echo "Downloading Bytecode Viewer ${BCV_VERSION}..."
  wget -O "${BCV}" "https://github.com/Konloch/bytecode-viewer/releases/download/v${BCV_VERSION}/Bytecode-Viewer-${BCV_VERSION}.jar"
  cd "${DIR}/utils"
  rm -f "bcv.jar"
  ln -s "$(basename "${BCV}")" "bcv.jar"
fi

#
# download JADX
# https://github.com/skylot/jadx
#

JADX_DIR="${DIR}/utils/jadx-${JADX_VERSION}"
JADX_ZIP="${DIR}/utils/jadx-${JADX_VERSION}.zip"
if [ -d "${JADX_DIR}" ]; then
  echo "JADX ${JADX_VERSION} is already available..."
else
  echo "Downloading JADX ${JADX_VERSION}..."
  wget -O "${JADX_ZIP}" "https://github.com/skylot/jadx/releases/download/v${JADX_VERSION}/jadx-${JADX_VERSION}.zip"
  mkdir -p "${JADX_DIR}"
  cd "${JADX_DIR}"
  unzip -q "${JADX_ZIP}"
  rm -f "${JADX_ZIP}"
  cd "${DIR}/utils"
  rm -f "jadx"
  ln -s "$(basename "${JADX_DIR}")" "jadx"
fi

#
# download Raccoon
# http://java-decompiler.github.io/
#

RACCOON="${DIR}/utils/raccoon-${RACCOON_VERSION}.jar"
if [ -f "${RACCOON}" ]; then
  echo "Raccoon ${RACCOON_VERSION} is already available..."
else
  echo "Downloading Raccoon ${RACCOON_VERSION}..."
  wget -O "${RACCOON}" "https://raccoon.onyxbits.de/apk-downloader/raccoon-${RACCOON_VERSION}.jar"
  cd "${DIR}/utils"
  rm -f "raccoon.jar"
  ln -s "$(basename "${RACCOON}")" "raccoon.jar"
fi

#
# download Uber Apk Signer
# https://github.com/patrickfav/uber-apk-signer
#

SIGNER="${DIR}/utils/uber-apk-signer-${SIGNER_VERSION}.jar"
if [ -f "${SIGNER}" ]; then
  echo "Uber Apk Signer ${SIGNER_VERSION} is already available..."
else
  echo "Downloading Uber Apk Signer ${SIGNER_VERSION}..."
  wget -O "${SIGNER}" "https://github.com/patrickfav/uber-apk-signer/releases/download/v1.1.0/uber-apk-signer-1.1.0.jar"
  cd "${DIR}/utils"
  rm -f "uber-apk-signer.jar"
  ln -s "$(basename "${SIGNER}")" "uber-apk-signer.jar"
fi

#
# generate Keystore
#

KEYSTORE="${DIR}/keystore.jks"
if [ -f "${KEYSTORE}" ]; then
  echo "Keystore is already available..."
else
  echo "Generating Keystore..."
  keytool -genkey -v -keystore "${KEYSTORE}" -keyalg RSA -keysize 4096 -validity 10000 -alias app -storepass "dexcom1234" -noprompt
fi
