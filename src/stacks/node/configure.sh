source "$HOME/.zsh_environment"

nvm install lts/dubnium
nvm install lts/erbium
nvm install lts/jod
nvm install lts/krypton

nvm alias default lts/krypton

npm config set init-author-name "Guilherme Alves"
npm config set init-author-email "guiigos.alves@gmail.com"

npm cache verify
npm cache clean --force

npm i -g verdaccio
npm i -g npkill
npm i -g npm-dview
npm i -g npm-check
npm i -g http-server
npm i -g json-server
