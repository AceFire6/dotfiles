# This helps with caching of dependencies that need to 
# build during installation from source
# https://github.com/mozilla/sccache
if commandExists sccache
then
  export RUSTC_WRAPPER=sccache
fi

