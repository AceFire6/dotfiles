## Create completions directory if it doesn't exist yet
if [ ! -d "$HOME/.zfunc" ]
then
  mkdir "$HOME/.zfunc/"
fi

## Setup completions if they don't exist yet
# Add completion for pnpm if pnpm is installed
if commandExists pnpm && [ ! -f "$HOME/.config/tabtab/zsh/__tabtab.zsh" ]
then
  pnpm install-completion zsh
fi

# Setup completions for graphite CLI if it exists
if commandExists gt && [ ! -d "$HOME/.zfunc/_gt" ]
then
  gt completion > "$HOME/.zfunc/_gt"
fi

# Add completions for gh CLI tool
if commandExists gh && [ ! -d "$HOME/.zfunc/_gh" ]
then
  gh completion -s zsh > "$HOME/.zfunc/_gh"
fi
