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
silently() {
  "$@" > /dev/null 2>&1
}
commandExists() {
  silently command -v "$1"
}

if commandExists nvim; then
  # No output during sourcing
  # https://neovim.io/
  # echo "nvim installed - aliasing vim=>nvim"
  alias vim=nvim
fi

if commandExists bat; then
  # No output during sourcing
  # https://github.com/sharkdp/bat
  # echo "bat installed - aliasing cat=>bat"
  alias cat=bat
fi

if commandExists eza; then
  # No output during sourcing
  # https://github.com/eza-community/eza
  # echo "eza installed - aliasing ls=>eza"
  alias ls=eza
  alias la='eza -la'
fi
