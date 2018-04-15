#!/usr/bin/env bash

# ————————————————————————
# EXPORTS
# ————————————————————————

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Android ADB
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools/

# Android zipalign, apksigner
export PATH=$PATH:$HOME/Library/Android/sdk/build-tools/25.0.2/

# Android emulator
export PATH=$PATH:$HOME/Library/Android/sdk/emulator/

# Android tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools/

# PostgreSql pg_[application]
export PATH=$PATH:/Library/PostgreSQL/9.6/bin/

# PostgreSql runpsql.sh
export PATH=$PATH:/Library/PostgreSQL/9.6/scripts/

# Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"

# Sublime Text
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl/"

# ————————————————————————
# FILES
# ————————————————————————

for file in ~/.bash_{aliases,functions,prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
