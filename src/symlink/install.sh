source "${SRC}/symlink/functions.sh"

msg_start symlink

symlink "${SRC}/symlink/git/.gitconfig" ".gitconfig"

symlink "${SRC}/symlink/zsh/.hushlogin" ".hushlogin"

symlink "${SRC}/symlink/zsh/.zshrc" ".zshrc"
symlink "${SRC}/symlink/zsh/.zsh_aliases" ".zsh_aliases"
symlink "${SRC}/symlink/zsh/.zsh_environment" ".zsh_environment"

msg_end symlink
