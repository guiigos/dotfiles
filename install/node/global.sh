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
      if $4 == true; then
        sudo npm update -g $2;
      else
        npm update -g $2;
      fi
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

installnpm "yo" yo true false;                                # https://www.npmjs.com/package/yo
installnpm "yo" generator-stack-node true false;              # https://www.npmjs.com/package/generator-stack-node
installnpm "gulp" gulp true false;                            # https://www.npmjs.com/package/gulp
installnpm "cordova" cordova true false;                      # https://www.npmjs.com/package/cordova
installnpm "ionic" ionic true false;                          # https://www.npmjs.com/package/ionic
installnpm "ngrok" ngrok true false;                          # https://www.npmjs.com/package/ngrok
installnpm "http-server" http-server true false;              # https://www.npmjs.com/package/http-server
installnpm "gitignore" gitignore true false;                  # https://www.npmjs.com/package/gitignore
installnpm "figlet" figlet-cli true false;                    # https://www.npmjs.com/package/figlet-cli
installnpm "mddir" mddir true false;                          # https://www.npmjs.com/package/mddir
installnpm "sort-package-json" sort-package-json true false;  # https://www.npmjs.com/package/sort-package-json
installnpm "notes" notes true false;                          # https://www.npmjs.com/package/notes
installnpm "npm-dview" npm-dview true false;                  # https://www.npmjs.com/package/npm-dview
installnpm "now" now true false;                              # https://www.npmjs.com/package/now
installnpm "ng" @angular/cli true false;                      # https://www.npmjs.com/package/@angular/cli
installnpm "nest" @nestjs/cli true false;                     # https://github.com/nestjs/nest-cli
installnpm "bower" bower true true;                           # https://www.npmjs.com/package/bower
installnpm "nodemon" nodemon true true;                       # https://www.npmjs.com/package/nodemon
installnpm "pm2" pm2 true true;                               # https://www.npmjs.com/package/pm2
installnpm "ios-sim" ios-sim true true;                       # https://www.npmjs.com/package/ios-sim
installnpm "ios-deploy" ios-deploy true true;                 # https://www.npmjs.com/package/ios-deploy

# Clean
msg "Cache clean NPM";
npm cache verify;
npm cache clean --force;
