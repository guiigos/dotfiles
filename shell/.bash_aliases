#!/usr/bin/env bash

#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

# edit config
alias editGitConfig="subl ~/.gitconfig"
alias editBashPrompt="subl ~/.bash_prompt"
alias editBashProfile="subl ~/.bash_profile"
alias editBashAliases="subl ~/.bash_aliases"
alias editBashFunctions="subl ~/.bash_functions"
alias editBashBackup="subl ~/.bash_backup"

# backup
alias backup="sh ~/.bash_backup"

# local repository
alias github="cd $HOME/Documents/Sistemas/GitHub/"
alias gitlab="cd $HOME/Documents/Sistemas/GitLab/"

# disable and enable spotlight
alias spotoff="sudo mdutil -a -i off"
alias spoton="sudo mdutil -a -i on"

# icons desktop
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hideDesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# files system
alias showSystem="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hideSystem="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# get week number
alias week="date +%V"

# navigation
alias -- -="cd -"             # -
alias ~="cd ~"                # ~
alias cs="cd ..;ls;"          # cs
alias cd..="cd .."            # cd..
alias ..="cd .."              # ..
alias ...="cd ../.."          # ...
alias ....="cd ../../.."      # ....
alias .....="cd ../../../.."  # .....

# directory
alias dir="pwd"               # list current directory

# list
alias ls="command ls -G"      # subscribe to the list by color list
alias ll="command ls -lFG"    # detailed listing or ls -l -F -G
alias la="command ls -laFG"   # detailed listing including hidden files

# historic
alias h=history
alias clr=clear
alias ch="history -c; history -w"

# remove files
alias dsstore="find . -type f -name '*.DS_Store' -ls -delete"

# basic update
alias updateSoftware="sudo softwareupdate -i -a" # update softwares
alias updateBrew="brew update; brew upgrade; brew cleanup" # update brew

# ios
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/" # open IOs emulator
