#!/bin/bash
git clone --bare git@github.com:AceFire6/dotfiles.git "$HOME/.cfg"

function conf {
  /usr/bin/git --git-dir="$HOME/.cfg/" --work-tree="$HOME" "$@"
}

mkdir -p .config-backup

if conf checkout; then
  echo "Checked out config"
else
  echo "Backing up pre-existing dot files"
  conf checkout 2>&1 | grep -E "\s+\." | awk '{print $2}' | xargs -I{} mv {} .config-backup/{}
fi
conf checkout
conf config status.showUntrackedFiles no
