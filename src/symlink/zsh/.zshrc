export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_TIME_SHOW=true
SPACESHIP_NODE_SHOW=true
SPACESHIP_DOCKER_SHOW=true

plugins=(git npm docker frontend-search copypath copyfile zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source ~/.zsh_aliases
source ~/.zsh_environment

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

DOTFILES_DIR=$(dirname $(dirname $(dirname $(dirname $(realpath ~/.zshrc)))))
ENVFILE="$DOTFILES_DIR/.env"
if [ -f "$ENVFILE" ]; then
  source $ENVFILE
fi
