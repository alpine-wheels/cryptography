#!/bin/sh

set -e

# install os dependencies
apk add --no-cache gcc git libffi-dev musl-dev openssl-dev

# find version
CRYPTOGRAPHY_VERSION="$(awk -F '==' '{ print $2 }' requirements.txt)"

# check out source code
rm -rf cryptography
git config --global advice.detachedHead false
git clone --branch "${CRYPTOGRAPHY_VERSION}" --depth 1 https://github.com/pyca/cryptography.git

# build
cd cryptography || exit
python setup.py bdist_wheel
