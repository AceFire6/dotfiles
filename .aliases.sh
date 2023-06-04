#!/bin/sh
# Setup bare git repo alias
alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# This pattern is used a lot so we set it up here
# to make the config more readable
function commandExists {
  command -v $1 &> /dev/null
}

if commandExists nvim
then
  # No output during sourcing
  # https://neovim.io/
  # echo "nvim installed - aliasing vim=>nvim"
  alias vim=nvim
fi

if commandExists bat
then
  # No output during sourcing
  # https://github.com/sharkdp/bat
  # echo "bat installed - aliasing cat=>bat"
  alias cat=bat
fi

if commandExists exa
then
  # No output during sourcing
  # https://github.com/ogham/exa
  # echo "exa installed - aliasing exa=>bat"
  alias ls=exa
fi
