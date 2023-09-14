#!/bin/bash

# Install brew
# https://brew.sh/
if ! command -v brew; then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

install_rustup() {
  echo "Installing rustup"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}
rustup || install_rustup

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
  # https://github.com/hashicorp/terraform
  terraform
)
echo "Installing tools"
brew install "${tools[@]}"

null_ls_brew_tools=(
  # https://github.com/rhysd/actionlint/tree/main
  actionlint
  # https://github.com/golangci/golangci-lint
  golangci-lint
  # https://github.com/hadolint/hadolint
  hadolint
  # https://github.com/koalaman/shellcheck
  shellcheck
  # https://github.com/aquasecurity/tfsec
  tfsec
  # https://github.com/htacg/tidy-html5
  tidy-html5
  # https://github.com/adrienverge/yamllint
  yamllint
  # https://github.com/incu6us/goimports-reviser
  incu6us/homebrew-tap/goimports-reviser
)
null_ls_npm_tools=(
  # cspell: https://cspell.org/docs/installation/
  cspell
  # eslint_d: https://github.com/mantoni/eslint_d.js
  eslint_d
  # markdownlint: https://github.com/DavidAnson/markdownlint
  markdownlint
  # @taplo/cli: https://github.com/tamasfe/taplo
  @taplo/cli
  # https://github.com/avencera/rustywind
  rustywind
)

null_ls_go_tools=(
  # https://github.com/fatih/gomodifytags
  github.com/fatih/gomodifytags@latest
  # https://github.com/josharian/impl
  github.com/josharian/impl@latest
  # https://github.com/mvdan/gofumpt
  mvdan.cc/gofumpt@latest
)

echo "Installing null-ls npm tools"
pnpm install -g "${null_ls_npm_tools[@]}"

echo "Installing null-ls Go tools"
go install "${null_ls_go_tools[@]}"

echo "Installing null-ls Brew tools"
brew install "${null_ls_brew_tools[@]}"

echo "Installing null-ls Rust tools"
rustup component add rustfmt

echo "Installing null-ls python tools"
# https://github.com/lyz-code/yamlfix
pip install yamlfix

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
