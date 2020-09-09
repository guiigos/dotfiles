#!/usr/bin/env bash

# ————————————————————————
# FUNCTIONS
# ————————————————————————

# create a new directory and enter it
# $1 - folder name
function mkd() {
  if [ "$#" -eq  "0" ]
    then
      echo "Folder name not reported"
  else
    mkdir -p "$PWD/$@" && cd "$PWD/$@";
  fi
}

# compare files in VSCode
# $1 - file
# $2 - compare
function diff() {
	code --diff $1 $2
}

# clone repository GitHub
# $1 - repository name
function gh() {
  if [ "$#" -eq  "0" ]
    then
      echo "Repository not informed"
  else
    git clone gh:$@;
  fi
}

# clone repository GitLab
# $1 - repository name
function gl() {
  if [ "$#" -eq  "0" ]
    then
      echo "Repository not informed"
  else
    git clone gl:$@;
  fi
}

# open emulator
# $1 - name AVD
function android() {
  if [ "$#" -eq  "0" ]
    then
      emulator -list-avds
  else
    emulator -avd $@
  fi
}

# create zip file
# $1 - file zip name
# $2 - folder name
function zippass() {
  sudo zip -r9 -e $1.zip $2
}
