# colors
yellow() {
  echo -e "\033[33m$1\033[0m"
}

green() {
  echo -e "\033[32m$1\033[0m"
}

blue() {
  echo -e "\033[34m$1\033[0m"
}

red() {
  echo -e "\033[31m$1\033[0m"
}

# messages
function msgerror {
  red "✖ $1 ✖"
}

function msgremove {
  yellow "=> $1 ✖"
}

function msgcheck {
  green "=> $1 ✔"
}

function msginstalled {
  green "==> $1 installed ✔"
  sleep 2
}

function msginstall {
  yellow "==> $1 [installing]"
}

function msgupdate {
  blue "==> $1 [updating]"
}

function msgupdated {
  blue "==> $1 updated ✔"
  sleep 2
}

# functions
function addLinkedFiles() {
  local filePath=~/"$2"

  if [ -e "$filePath" ] || [ -L "$filePath" ]; then
    msgremove "Removendo $2"
    rm -f "$filePath"
  fi

  msgcheck "Adicionando o arquivo $2"
  ln -s "${src}/$1/symlink/$2" "$filePath"
}
