msginstall brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
msginstalled brew

function installWithBrew() {
  if brew list $1 &> /dev/null; then
    msgcheck $1

    msgupdate $1
    brew upgrade $1 --quiet
    msgupdated $1
  else
    msginstall $1
    brew install $1 --quiet
    msginstalled $1
  fi
}

function installWithCask() {
  if brew list $1 &> /dev/null; then
    msgcheck $1
  else
    msginstall $1
    brew install --cask $1 --quiet
    msginstalled $1
  fi
}

installWithBrew nvm
installWithBrew git
installWithBrew pkgx
installWithBrew httpie
installWithBrew lazygit
installWithBrew postgresql
installWithBrew heroku/brew/heroku

installWithCask font-fira-code-nerd-font

installWithCask google-chrome
installWithCask google-drive
installWithCask battle-net
installWithCask sublime-text
installWithCask visual-studio-code
installWithCask dbeaver-community
installWithCask notion
installWithCask obsidian
installWithCask veracrypt
installWithCask gifcapture
installWithCask dropbox
installWithCask spotify
installWithCask vlc
installWithCask onyx
installWithCask zoom
installWithCask docker
installWithCask drawio
installWithCask postman
installWithCask gimp

brew cleanup
