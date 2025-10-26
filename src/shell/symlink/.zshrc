export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_TIME_SHOW=true
SPACESHIP_NODE_SHOW=true
SPACESHIP_DOCKER_SHOW=true

plugins=(git git-commit npm docker frontend-search zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# configurações
source ~/.brew
source ~/.sdk
source ~/.alias

# inicializa o pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

PATH=~/.console-ninja/.bin:$PATH

DOTFILES_DIR=$(dirname $(dirname $(dirname $(dirname $(realpath ~/.zshrc)))))
ENVFILE=$(realpath "$DOTFILES_DIR/.env");
if [ -f "$ENVFILE" ]; then
  source $ENVFILE
fi

