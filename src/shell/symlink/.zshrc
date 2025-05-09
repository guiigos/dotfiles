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

PATH=~/.console-ninja/.bin:$PATH
