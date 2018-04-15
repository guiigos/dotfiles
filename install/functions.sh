# Colors
red="\033[1;31m";
blue="\033[1;34m";
green="\033[1;32m";
yellow="\033[1;33m";
default="\033[0m";

# Already installed
function msgcheck {
  echo "${green}=> $1 ✔${default}";
}

# Installing
function msginstall {
  echo "${yellow}==> $1 [installing]${default}";
}

# Installed
function msginstalled {
  echo "${green}==> $1 installed ✔${default}";
}

# Update
function msgupdate {
  echo "${blue}==> $1 [updating]${default}";
}

# Updated
function msgupdated {
  echo "${blue}==> $1 updated ✔${default}";
}

# Error
function msgerror {
  echo "${red}✖ $1 ✖${default}";
}

# Message
function msg {
  echo "${green} $1 ${default}";
}
