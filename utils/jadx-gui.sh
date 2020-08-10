#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -e

sh "${DIR}/jadx/bin/jadx-gui" "$@"
