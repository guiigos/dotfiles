function installWithNpm() {
  if which $1 &> /dev/null; then
    msgcheck $1

    msgupdate $1
    npm update -g $1 --silent
    msgupdated $1
  else
    msginstall $1
    npm install -g $1 --silent
    msginstalled $1
  fi
}

mkdir ~/.nvm
source ~/.brew

nvm install 10.24
nvm install 12.22
nvm install 14.21
nvm install 18.20
nvm install 22.13

nvm alias default 22.13

npm config set init-author-name "Guilherme Alves"
npm config set init-author-email "guiigos.alves@gmail.com"
npm config set save-prefix="~"

install_npm verdaccio
install_npm typescript
install_npm npkill
install_npm npm-dview
install_npm npm-check
install_npm http-server
install_npm json-server
install_npm kickstart-it

npm cache verify
npm cache clean --force