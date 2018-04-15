#!/usr/bin/env bash

# ————————————————————————
# FUNCTIONS
# ————————————————————————

# Create a new directory and enter it
# $1 - Folder name
function mkd() {
  if [ "$#" -eq  "0" ]
    then
      echo "Folder name not reported."
  else
    mkdir -p "$PWD/$@" && cd "$PWD/$@";
  fi
}

# Clone repository GitHub
# $1 - Repository name
function gh() {
  if [ "$#" -eq  "0" ]
    then
      echo "Repository not informed."
  else
    git clone gh:$@;
  fi
}

# Clone repository GitLab
# $1 - Repository name
function gl() {
  if [ "$#" -eq  "0" ]
    then
      echo "Repository not informed."
  else
    git clone gl:$@;
  fi
}

# Open emulator Android
# $1 - Name AVD
function android() {
  if [ "$#" -eq  "0" ]
    then
      emulator -list-avds
  else
    emulator -avd $@
  fi
}

# Create zip file
# $1 - File zip name
# $2 - Folder name
function zippass() {
  sudo zip -r9 -e $1.zip $2
}

# Status branch for bash
function git_prompt() {
  local s='';
  local b='';

  # Check if the current directory is in a GIT repository
  if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

    # Check if the current directory is in .git before running git checks
    if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

      # Ensure the index is up to date
      git update-index --really-refresh -q &>/dev/null;

      # Check for untracked files
      if [ -n "$(git ls-files --others --exclude-standard)" ]; then
        s+='🔺';
      fi

      # Check for unstaged changes
      if ! $(git diff-files --quiet --ignore-submodules --); then
        s+='❗';
      fi

      # Check for uncommitted changes in the index
      if ! $(git diff --quiet --ignore-submodules --cached); then
        s+='❓';
      fi

      # Check for stashed files
      if $(git rev-parse --verify refs/stash &>/dev/null); then
        s+='💢';
      fi

      b="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
        git rev-parse --short HEAD 2> /dev/null || \
        echo 'unknown')";

      [ -n "${s}" ] && s="[${s}]";
      echo -e " (${b})${s}";
    else
      return;
    fi
  else
    return;
  fi
}
