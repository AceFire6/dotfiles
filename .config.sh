# This helps with caching of dependencies that need to 
# build during installation from source
# https://github.com/mozilla/sccache
if command -v sccache &> /dev/null
then
  export RUSTC_WRAPPER=sccache
fi

