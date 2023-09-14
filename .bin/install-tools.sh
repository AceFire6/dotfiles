#!/bin/bash

# Install brew
# https://brew.sh/
if ! command -v brew; then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Extra taps
brew tap homebrew/cask-fonts

tools=(
  # make sure we're using the latest git
  git
  # Install github CLI tool: https://cli.github.com/
  gh
  # Go language: https://go.dev/
  go
  # shell formatting tool: https://github.com/mvdan/sh#shfmt
  shfmt
  # https://github.com/eza-community/eza
  eza
  # https://github.com/sharkdp/bat
  bat
  # https://github.com/junegunn/fzf
  fzf
  # https://github.com/sharkdp/fd
  fd
  # https://github.com/BurntSushi/ripgrep
  ripgrep
  # https://github.com/stedolan/jq
  jq
  # https://github.com/neovim/neovim
  neovim
  # https://github.com/mozilla/sccache
  sccache
  # https://github.com/koalaman/shellcheck
  shellcheck
  # https://pre-commit.com/
  pre-commit
)
echo "Installing tools"
brew install "${tools[@]}"

casks=(
  docker
  # https://fig.io/
  fig
  # https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
  font-meslo-lg-nerd-font
  # IDE Things
  jetbrains-toolbox
)
echo "Installing casks"
brew install --cask "${casks[@]}"
