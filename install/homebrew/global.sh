#!/bin/bash

source functions.sh

# $1 - formula
# $2 - update
function installbrew() {
  if brew list $1 &> /dev/null; then
    msgcheck $1;
    if $2 == true; then
      msgupdate $1;
      brew upgrade $1;
      msgupdated $1;
    fi
  else
    msginstall $1;
    brew install $1;
    msginstalled $1;
  fi
}

# $1 - formula
function installcask() {
  if brew cask list $1 &> /dev/null; then
    msgcheck $1;
  else
    msginstall $1;
    brew cask install $1;
    msginstalled $1;
  fi
}

# Install
if which brew &> /dev/null; then
  msgcheck "homebrew";
else
  msginstall "homebrew";
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; #/usr/bin/ruby
  msginstalled "homebrew";

  msginstall "caskroom";
  brew tap caskroom/cask;
  msginstalled "caskroom";
fi

# HomeBrew
installbrew git true;
installbrew yarn true;
installbrew node true;
installbrew openssl true;
installbrew mongodb true;
installbrew heroku true;
installbrew ttygif true;
installbrew postgres true;

# CaskRoom
installcask google-chrome;
installcask google-backup-and-sync;
installcask insomnia;
installcask gifcapture;
installcask sublime-text;
installcask visual-studio-code;
installcask android-studio;
installcask pgadmin4;
installcask vox;
installcask slack;
installcask dropbox;

# Clean
msg "Cache clean Brew";
brew upgrade;
brew cleanup;
