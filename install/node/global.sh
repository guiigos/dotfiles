#!/bin/bash

source functions.sh

# $1 - name
# $2 - lib
# $3 - update
# $4 - sudo
function installnpm() {
  if which $1 &> /dev/null; then
    msgcheck $1;
    if $3 == true; then
      msgupdate $1;
      npm update -g $2;
      msgupdated $1;
    fi
  else
    msginstall $1;
    if $4 == true; then
      sudo npm install -g $2;
    else
      npm install -g $2;
    fi
    msginstalled $1;
  fi
}

# Install
if which node &> /dev/null; then
  msgcheck "node";
else
  msginstall "node";
  npm install -g n;
  sudo n stable;
  msginstalled "node";
fi

installnpm "yo" yo true;
installnpm "yo" generator-stack-node true;
installnpm "gulp" gulp true;
installnpm "cordova" cordova true;
installnpm "ionic" ionic true;
installnpm "ngrok" ngrok true;
installnpm "nodemon" nodemon true;
installnpm "http-server" http-server true;
installnpm "pm2" pm2 true;
installnpm "gitignore" gitignore true;
installnpm "figlet" figlet-cli true;
installnpm "mddir" mddir true;
installnpm "sort-package-json" sort-package-json true;
installnpm "notes" notes true;
installnpm "npm-dview" npm-dview true;
installnpm "now" now true;
installnpm "ng" @angular/cli true;
installnpm "bower" bower true true;
installnpm "ios-sim" ios-sim true true;
installnpm "ios-deploy" ios-deploy true true;

# Clean
msg "Cache clean NPM";
npm cache verify;
npm cache clean --force;
