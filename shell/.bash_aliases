#!/usr/bin/env bash

# ————————————————————————
# ALIAS
# ————————————————————————

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

# Secret folder
alias showprivate="mv private .private"
alias hideprivate="mv .private private"
alias private="open ~/.private"

# Navigation
alias -- -="cd -"             # -
alias ~="cd ~"                # ~
alias cs="cd ..;ls;"          # cs
alias cd..="cd .."            # cd..
alias ..="cd .."              # ..
alias ...="cd ../.."          # ...
alias ....="cd ../../.."      # ....
alias .....="cd ../../../.."  # .....
alias ls="command ls -G"      # ls
alias ld="command ls -lF -G"  # ld
alias la="command ls -laF -G" # la

# Historic
alias h=history
alias clr=clear
alias clrfull="history -c; history -w; rm ~/.bash_history"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanupls="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder" # Clean LaunchServices

# Get week number
alias week="date +%V"

# Database
alias db="source runpsql.sh"

# Backup
alias backup="sh ~/.bash_backup"

# Programs
alias subl=sublime

# Update basic
alias update="sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update -g"

# IOs
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/"
