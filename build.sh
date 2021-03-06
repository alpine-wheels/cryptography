#!/bin/sh

set -e

# install dependencies
apk add --no-cache cargo gcc libffi-dev musl-dev openssl-dev rust

# build
pip wheel --no-deps --requirement requirements.txt
