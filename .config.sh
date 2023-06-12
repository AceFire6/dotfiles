#!/bin/bash
# This helps with caching of dependencies that need to
# build during installation from source
# https://github.com/mozilla/sccache
if commandExists sccache; then
  export RUSTC_WRAPPER=sccache
fi

# Install the pre-commit hooks if pre-commit is installed
if commandExists pre-commit; then
  dotfile pre-commit install > /dev/null 2>&1
fi
