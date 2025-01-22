sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

script_dir=$(dirname "$(realpath "$0")")

function addLinkedFiles() {
  local filePath=~/"$1"

  if [ -e "$filePath" ] || [ -L "$filePath" ]; then
    echo "O arquivo $filePath já existe e será removido..."
    rm -f "$filePath"
  fi

  ln -s "${script_dir}/scripts/$1" "$filePath"
}

addLinkedFiles ".zshrc"
addLinkedFiles ".brew"
addLinkedFiles ".alias"
addLinkedFiles ".wiki"
addLinkedFiles ".backup"
addLinkedFiles ".hushlogin"