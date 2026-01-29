source "${SRC}/brew/functions.sh"

msg_start brew

echo
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo
brew update

echo
brewInstall gh
brewInstall glab
brewInstall nvm
brewInstall git
brewInstall pkgx
brewInstall httpie
brewInstall lazygit
brewInstall heroku
brewInstall pyenv

brewInstall font-fira-code-nerd-font

brewInstall google-chrome
brewInstall google-drive
brewInstall sublime-text
brewInstall arduino-ide
brewInstall android-studio
brewInstall visual-studio-code
brewInstall dbeaver-community
brewInstall mongodb-compass
brewInstall docker-desktop
brewInstall veracrypt-fuse-t
brewInstall notion
brewInstall obsidian
brewInstall gifcapture
brewInstall spotify
brewInstall vlc
brewInstall zoom
brewInstall drawio
brewInstall postman
brewInstall gimp

brew cleanup

msg_end brew
