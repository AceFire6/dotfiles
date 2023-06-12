# dotfiles for @AceFire6

## pre-commit

This repository uses [pre-commit](https://pre-commit.com/) to lint for `yaml` and `sh` files.

The installation will ensure `pre-commit install` is called to set up the git hooks.

## Installation

### dotfiles Installation

This will do a bare clone of this repo, setup the `conf` and `dotfile` alias, and backup and
replace any existing config to `~/.config-backup`.

> NOTE: To run this you need `curl` and `git` to be installed

```shell
curl https://raw.githubusercontent.com/AceFire6/dotfiles/main/.bin/install.sh | /bin/bash
```

### Tools Installation

This will install common tools and supporting applications I use day-to-day.

```shell
bash "$HOME/.bin/install-tools.sh"
```

#### Tools

* [git](https://github.com/git/git)
* [gh](https://cli.github.com/)
* [go](https://go.dev/)
* [shfmt](https://github.com/mvdan/sh#shfmt)
* [exa](https://github.com/ogham/exa)
* [bat](https://github.com/sharkdp/bat)
* [fzf](https://github.com/junegunn/fzf)
* [fd](https://github.com/sharkdp/fd)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [jq](https://github.com/stedolan/jq)
* [sccache](https://github.com/mozilla/sccache)
* [shellcheck](https://github.com/koalaman/shellcheck)
* [pre-commit](https://pre-commit.com/)
* [jetbrains-toolbox](https://www.jetbrains.com/toolbox-app/) - this lets me install Jetbrains IDEs
* [fig](https://fig.io/)
* [docker](https://www.docker.com/)

### Editor

* [neovim](https://github.com/neovim/neovim)
* [meslo-lg-nerd-font](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)

This setup is based on [this article](https://www.atlassian.com/git/tutorials/dotfiles)
