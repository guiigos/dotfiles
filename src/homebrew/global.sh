# ██╗  ██╗ ██████╗ ███╗   ███╗███████╗██████╗ ██████╗ ███████╗██╗    ██╗
# ██║  ██║██╔═══██╗████╗ ████║██╔════╝██╔══██╗██╔══██╗██╔════╝██║    ██║
# ███████║██║   ██║██╔████╔██║█████╗  ██████╔╝██████╔╝█████╗  ██║ █╗ ██║
# ██╔══██║██║   ██║██║╚██╔╝██║██╔══╝  ██╔══██╗██╔══██╗██╔══╝  ██║███╗██║
# ██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗██████╔╝██║  ██║███████╗╚███╔███╔╝
# ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚══╝╚══╝

source functions.sh

function install_brew() {
  if brew list $1 &> /dev/null; then
    msgcheck $1

    if $2 == true; then
      msgupdate $1
      brew upgrade $1 --quiet
      msgupdated $1
    fi
  else
    msginstall $1

    if $3 == true; then
      brew install --cask $1 --quiet
    else
      brew install $1 --quiet
    fi

    msginstalled $1
  fi
}

if which brew &> /dev/null; then
  msgcheck "HomeBrew"
else
  msginstall "HomeBrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  msginstalled "HomeBrew"

  msginstall "CaskRoom"
  brew install cask
  msginstalled "CaskRoom"
fi

install_brew nvm true false
install_brew git true false

install_brew google-chrome false true
install_brew google-drive false true
install_brew sublime-text false true
install_brew visual-studio-code false true
install_brew notion false true
install_brew obsidian false true
install_brew veracrypt false true
install_brew gifcapture false true
install_brew dropbox false true
install_brew spotify false true
install_brew vlc false true
install_brew onyx false true
install_brew zoom false true
install_brew docker false true

brew upgrade
brew cleanup
