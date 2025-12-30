symlink() {
  local source="$1"
  local target=~/"$2"

  if [ -e "$target" ] || [ -L "$target" ]; then
    rm -f "$target"
  fi

  msg_check $2
  ln -s "$source" "$target"
}
