#!/bin/sh
# Setup bare git repo alias
alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

pushbranch() {
 git push -u origin "$(git rev-parse --abbrev-ref HEAD)"
}

if command -v nvim &> /dev/null
then
  # No output during sourcing
  # echo "nvim installed - aliasing vim=>nvim"
  alias vim=nvim
fi

if command -v nvim &> /dev/null
then
  # No output during sourcing
  # echo "bat installed - aliasing cat=>bat"
  alias cat=bat
fi

if command -v nvim &> /dev/null
then
  # No output during sourcing
  # echo "exa installed - aliasing exa=>bat"
  alias ls=exa
fi
