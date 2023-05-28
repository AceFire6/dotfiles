#!/bin/sh
# Setup bare git repo alias
alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

if command -v nvim &> /dev/null
then
  # No output during sourcing
  # https://neovim.io/
  # echo "nvim installed - aliasing vim=>nvim"
  alias vim=nvim
fi

if command -v bat &> /dev/null
then
  # No output during sourcing
  # https://github.com/sharkdp/bat
  # echo "bat installed - aliasing cat=>bat"
  alias cat=bat
fi

if command -v exa &> /dev/null
then
  # No output during sourcing
  # https://github.com/ogham/exa
  # echo "exa installed - aliasing exa=>bat"
  alias ls=exa
fi
