#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -e

java -jar "${DIR}/uber-apk-signer.jar" "$@"
