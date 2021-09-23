#!/usr/bin/env bash

# ██████╗ ██████╗  ██████╗ ███████╗██╗██╗     ███████╗
# ██╔══██╗██╔══██╗██╔═══██╗██╔════╝██║██║     ██╔════╝
# ██████╔╝██████╔╝██║   ██║█████╗  ██║██║     █████╗
# ██╔═══╝ ██╔══██╗██║   ██║██╔══╝  ██║██║     ██╔══╝
# ██║     ██║  ██║╚██████╔╝██║     ██║███████╗███████╗
# ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚══════╝

# stop displaying the ZSH message
export BASH_SILENCE_DEPRECATION_WARNING=1

# ————————————————————————
# EXPORTS
# ————————————————————————

# add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# visual studio code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"

# sublime text
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl/"

# android ADB
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools/

# android build tools
export PATH=$PATH:$HOME/Library/Android/sdk/build-tools/25.0.2/

# android emulator
export PATH=$PATH:$HOME/Library/Android/sdk/emulator/

# android tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools/

# flutter
export PATH=$PATH:$HOME/Library/Android/flutter/bin/

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # this loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # this loads nvm bash_completion

# ————————————————————————
# FILES
# ————————————————————————

for file in ~/.bash_{aliases,functions,prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source ~/.bashrc; # autocomplete do NPM

unset file;
