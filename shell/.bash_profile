#!/usr/bin/env bash

# Parar de exibir a mensagem do ZSH
export BASH_SILENCE_DEPRECATION_WARNING=1

# ————————————————————————
# EXPORTS
# ————————————————————————

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"

# Sublime Text
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl/"

# Android ADB
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools/

# Android zipalign, apksigner
export PATH=$PATH:$HOME/Library/Android/sdk/build-tools/25.0.2/

# Android emulator
export PATH=$PATH:$HOME/Library/Android/sdk/emulator/

# Android tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools/

# Flutter
export PATH=$PATH:$HOME/Library/Android/flutter/bin/

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# ————————————————————————
# FILES
# ————————————————————————

for file in ~/.bash_{aliases,functions,prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source ~/.bashrc; # autocomplete do NPM

unset file;
