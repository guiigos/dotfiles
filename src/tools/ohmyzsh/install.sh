msg_start ohmyzsh

echo
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
ZSH_PLUGINS_DIR="$ZSH_CUSTOM/plugins"
ZSH_THEMES_DIR="$ZSH_CUSTOM/themes"

ZSH_SYNTAX_HIGHLIGHTING="$ZSH_PLUGINS_DIR/zsh-syntax-highlighting"
ZSH_AUTOSUGGESTIONS_DIR="$ZSH_PLUGINS_DIR/zsh-autosuggestions"

ZSH_SPACESHIP_PROMPT="$ZSH_THEMES_DIR/spaceship-prompt"

msg_installing "zsh-syntax-highlighting"
rm -rf "$ZSH_SYNTAX_HIGHLIGHTING"
git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_SYNTAX_HIGHLIGHTING"
msg_installed "zsh-syntax-highlighting"

msg_installing "zsh-autosuggestions"
rm -rf "$ZSH_AUTOSUGGESTIONS_DIR"
git clone --quiet https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_AUTOSUGGESTIONS_DIR"
msg_installed "zsh-autosuggestions"

msg_installing "spaceship-prompt"
rm -rf "$ZSH_SPACESHIP_PROMPT"
git clone --quiet https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_SPACESHIP_PROMPT"

TARGET="$ZSH_THEMES_DIR/spaceship.zsh-theme"
SOURCE="$ZSH_SPACESHIP_PROMPT/spaceship.zsh-theme"
if [[ ! -e "$TARGET" ]]; then
  ln -s "$SOURCE" "$TARGET"
fi
msg_installed "spaceship-prompt"

msg_end ohmyzsh
