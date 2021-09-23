# ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
# ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
# █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
# ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
# ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
# ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

# colors
red="\033[1;31m";
blue="\033[1;34m";
green="\033[1;32m";
yellow="\033[1;33m";
default="\033[0m";

# already installed
function msgcheck {
  echo "${green}=> $1 ✔${default}";
}

# installing
function msginstall {
  echo "${yellow}==> $1 [installing]${default}";
}

# installed
function msginstalled {
  echo "${green}==> $1 installed ✔${default}";
}

# update
function msgupdate {
  echo "${blue}==> $1 [updating]${default}";
}

# updated
function msgupdated {
  echo "${blue}==> $1 updated ✔${default}";
}

# error
function msgerror {
  echo "${red}✖ $1 ✖${default}";
}

# message
function msg {
  echo "${green} $1 ${default}";
}
