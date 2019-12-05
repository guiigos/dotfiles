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

# Create file autocomplete
npm completion >> ~/.bashrc;

# Dados default NPM INIT
npm config set init.author.name "Guilherme Alves";
npm config set init.author.email "guiigos.alves@gmail.com";
npm config set save-prefix="~";

# Globals
installnpm "ng" @angular/cli true false;                      # https://www.npmjs.com/package/@angular/cli
installnpm "cordova" cordova true false;                      # https://www.npmjs.com/package/cordova
installnpm "ionic" ionic true false;                          # https://www.npmjs.com/package/ionic
installnpm "typescript" typescript true false;                # https://www.npmjs.com/package/typescript
installnpm "create-react-app" create-react-app true false;    # https://www.npmjs.com/package/create-react-app
installnpm "yo" yo true false;                                # https://www.npmjs.com/package/yo
installnpm "figlet" figlet-cli true false;                    # https://www.npmjs.com/package/figlet-cli
installnpm "ngrok" ngrok true false;                          # https://www.npmjs.com/package/ngrok
installnpm "sort-package-json" sort-package-json true false;  # https://www.npmjs.com/package/sort-package-json
installnpm "npm-dview" npm-dview true false;                  # https://www.npmjs.com/package/npm-dview
installnpm "npm-check" npm-check true false;                  # https://www.npmjs.com/package/npm-check
installnpm "http-server" http-server true false;              # https://www.npmjs.com/package/http-server
installnpm "json-server" json-server true false;              # https://www.npmjs.com/package/json-server
installnpm "workin-hard" workin-hard true false;              # https://www.npmjs.com/package/workin-hard
installnpm "notes" notes true false;                          # https://www.npmjs.com/package/notes
installnpm "mddir" mddir true false;                          # https://www.npmjs.com/package/mddir
installnpm "cowsay" cowsay true false;                        # https://www.npmjs.com/package/cowsay
installnpm "qrip" qrip true false;                            # https://www.npmjs.com/package/qrip
installnpm "bower" bower true true;                           # https://www.npmjs.com/package/bower
installnpm "pm2" pm2 true true;                               # https://www.npmjs.com/package/pm2
installnpm "nodemon" nodemon true true;                       # https://www.npmjs.com/package/nodemon

# Clean
msg "Cache clean NPM";
npm cache verify;
npm cache clean --force;
