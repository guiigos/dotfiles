# ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
# ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
# █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
# ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
# ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
# ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

# cores
yellow() {
  echo "\033[33m$1\033[0m"
}

green() {
  echo "\033[32m$1\033[0m"
}

blue() {
  echo "\033[34m$1\033[0m"
}

red() {
  echo "\033[31m$1\033[0m"
}

# mensagens
function msgcheck {
  green "=> $1 ✔"
}

function msginstall {
  yellow "==> $1 [installing]"
}

function msginstalled {
  green "==> $1 installed ✔"
}

function msgupdate {
  blue "==> $1 [updating]"
}

function msgupdated {
  blue "==> $1 updated ✔"
}

function msgerror {
  red "✖ $1 ✖"
}
