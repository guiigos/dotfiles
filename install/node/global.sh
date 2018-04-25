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

installnpm "yo" yo true;                                # https://www.npmjs.com/package/yo
installnpm "yo" generator-stack-node true;              # https://www.npmjs.com/package/generator-stack-node
installnpm "gulp" gulp true;                            # https://www.npmjs.com/package/gulp
installnpm "cordova" cordova true;                      # https://www.npmjs.com/package/cordova
installnpm "ionic" ionic true;                          # https://www.npmjs.com/package/ionic
installnpm "ngrok" ngrok true;                          # https://www.npmjs.com/package/ngrok
installnpm "nodemon" nodemon true;                      # https://www.npmjs.com/package/nodemon
installnpm "http-server" http-server true;              # https://www.npmjs.com/package/http-server
installnpm "pm2" pm2 true;                              # https://www.npmjs.com/package/pm2
installnpm "gitignore" gitignore true;                  # https://www.npmjs.com/package/gitignore
installnpm "figlet" figlet-cli true;                    # https://www.npmjs.com/package/figlet-cli
installnpm "mddir" mddir true;                          # https://www.npmjs.com/package/mddir
installnpm "sort-package-json" sort-package-json true;  # https://www.npmjs.com/package/sort-package-json
installnpm "notes" notes true;                          # https://www.npmjs.com/package/notes
installnpm "npm-dview" npm-dview true;                  # https://www.npmjs.com/package/npm-dview
installnpm "now" now true;                              # https://www.npmjs.com/package/now
installnpm "ng" @angular/cli true;                      # https://www.npmjs.com/package/@angular/cli
installnpm "bower" bower true true;                     # https://www.npmjs.com/package/bower
installnpm "ios-sim" ios-sim true true;                 # https://www.npmjs.com/package/ios-sim
installnpm "ios-deploy" ios-deploy true true;           # https://www.npmjs.com/package/ios-deploy

# Clean
msg "Cache clean NPM";
npm cache verify;
npm cache clean --force;
