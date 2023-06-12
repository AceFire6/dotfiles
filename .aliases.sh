#!/bin/bash
# Configure dotfile management using git
# Usage:
#   dotfile git status
#   dotfile pre-commit run -a
alias dotfile='GIT_DIR=$HOME/.cfg/ GIT_WORK_TREE=$HOME'
# Setup bare git repo alias
alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# This pattern is used a lot so we set it up here
# to make the config more readable
commandExists() {
  command -v "$1" > /dev/null 2>&1
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
  # echo "exa installed - aliasing ls=>exa"
  alias ls=exa
fi
