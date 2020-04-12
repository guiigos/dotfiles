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
  brew install cask;
  msginstalled "caskroom";
fi

# https://devcenter.heroku.com/articles/heroku-cli
brew tap heroku/brew && brew install heroku;

# HomeBrew https://docs.brew.sh/Manpage.html
installbrew node true;            # https://docs.npmjs.com/
installbrew nvm true;             # https://github.com/nvm-sh/nvm
installbrew yarn true;            # https://yarnpkg.com/en/docs/cli/
installbrew git true;             # https://git-scm.com/doc
installbrew openssl true;         # https://www.openssl.org/docs/
installbrew postgresql true;      # http://postgresguide.com/utilities/psql.html

# CaskRoom https://gillesfabio.github.io/homebrew-cask-homepage
installcask google-chrome;
installcask google-backup-and-sync;
installcask dropbox;
installcask sublime-text;
installcask visual-studio-code;
installcask android-studio;       # https://developer.android.com/studio/command-line/adb.html
installcask pgadmin4;
installcask slack;
installcask insomnia;
installcask gifcapture;
installcask vox;
installcask vlc;
installcask appcleaner;
installcask spectacle;
installcask docker;

# Clean
msg "Cache clean Brew";
brew upgrade;
brew cleanup;
