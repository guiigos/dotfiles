color_yellow() { echo -e "\033[33m$1\033[0m"; }
color_green()  { echo -e "\033[32m$1\033[0m"; }
color_blue()   { echo -e "\033[34m$1\033[0m"; }
color_red()    { echo -e "\033[31m$1\033[0m"; }

level_init()   { printf "=>"; }
level_step()   { printf "==>"; }
level_deep()   { printf "===>"; }

ts()           { date +"%H:%M:%S"; }

msg() {
  local level_fn="$1"; shift
  local color_fn="$1"; shift
  local text="$*"

  local level
  level="$($level_fn)"

  "$color_fn" "$level $text"
}

msg_start()      { msg level_init color_green "Getting started [$*]"; }
msg_end()        { msg level_init color_green "Finishing [$*]"; }
msg_installing() { msg level_step color_green $1 "[installing]"; }
msg_installed()  { msg level_step color_green $1 "[installed]"; }
msg_updating()   { msg level_deep color_blue $1 "[updating]"; }
msg_updated()    { msg level_deep color_blue $1 "[updated]"; }
msg_check()      { msg level_deep color_blue $1; }
