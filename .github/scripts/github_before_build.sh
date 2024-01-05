#!/bin/bash -eux

# Simple script for downloading, unpacking, and getting ready to build Ungoogled-Chromium macOS binaries on GitHub Actions

_root_dir=$(dirname $(greadlink -f $0))
_main_repo="$_root_dir/src/brave"

cd $_main_repo

npm install

npm run init

npm config set target_arch arm
