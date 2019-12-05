#!/usr/bin/env bash

# ————————————————————————
# ALIAS
# ————————————————————————

# Backup
alias backup="sh ~/.bash_backup"

# Folder GitHub, GitLab
alias github="cd $HOME/Documents/Sistemas/GitHub/"
alias gitlab="cd $HOME/Documents/Sistemas/GitLab/"

# Icons desktop
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# Files system
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Disable and enable spotlight
alias spotoff="sudo mdutil -a -i off"
alias spoton="sudo mdutil -a -i on"

# Lock screen
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Files config
alias gitconfig="subl ~/.gitconfig"
alias bash_prompt="subl ~/.bash_prompt"
alias bash_profile="subl ~/.bash_profile"
alias bash_aliases="subl ~/.bash_aliases"
alias bash_functions="subl ~/.bash_functions"
alias bash_backup="subl ~/.bash_backup"

# Get week number
alias week="date +%V"

# Navigation
alias -- -="cd -"             # -
alias ~="cd ~"                # ~
alias cs="cd ..;ls;"          # cs
alias cd..="cd .."            # cd..
alias ..="cd .."              # ..
alias ...="cd ../.."          # ...
alias ....="cd ../../.."      # ....
alias .....="cd ../../../.."  # .....

# Diretório
alias dir="pwd"               # listar diretório atual

# List
alias ls="command ls -G"      # subscreve a listagem pela listagem por cores
alias ld="command ls -lFG"    # listagem detalhada ou ls -l -F -G
alias lo="command ls -laFG"   # listagem detalhada incluindo arquivos ocultos

# Historic
alias h=history
alias cl=clear
alias ch="history -c; history -w; rm ~/.bash_history"
alias cf="defaults delete com.apple.finder GoToField; defaults delete com.apple.finder GoToFieldHistory"

# NPM
alias npm_clear="npm cache clean --force" # Limpar cache
alias npm_install="npm install --only=production" # Instalar pacotes ignorando devdependences
alias npm_list="npm ls --depth=0" # Listar pacotes (Informgar -g para global)
alias npm_update="npm update" # Update dos pacotes (Informgar -g para global)
alias npm_outdated="npm outdated" # Listar pacotes desatualizados (Informgar -g para global)

# Remove files
alias dsstore="find . -type f -name '*.DS_Store' -ls -delete"

# Update basic
alias update_software="sudo softwareupdate -i -a" # update softwares
alias update_brew="brew update; brew upgrade; brew cleanup" # update brew

# IOs
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/" # Open IOs emulator
