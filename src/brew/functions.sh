brewInstall() {
  local name="$1"
  local type flag=""

  if ! type="$(brewType "$name")"; then
    return 1
  fi

  [[ "$type" == "cask" ]] && flag="--cask"

  if brew list $flag "$name" >/dev/null 2>&1; then
    msg_installed "$name"

    msg_updating "$name"
    brew upgrade $flag "$name" --quiet || true
    msg_updated "$name"
  else
    msg_installing "$name"
    brew install $flag "$name" --quiet
    msg_installed "$name"
  fi
}

brewType() {
  local name="$1"

  if brew info --formula "$name" >/dev/null 2>&1; then
    echo "formula"
    return 0
  fi

  if brew info --cask "$name" >/dev/null 2>&1; then
    echo "cask"
    return 0
  fi

  return 1
}
