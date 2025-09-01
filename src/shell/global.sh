msginstall ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
msginstalled ohmyzsh

msginstall sdkman
sh -c "$(curl -s "https://get.sdkman.io")"
msginstalled sdkman

folder="shell"
addLinkedFiles $folder ".alias"
addLinkedFiles $folder ".zshrc"
addLinkedFiles $folder ".brew"
addLinkedFiles $folder ".sdk"
addLinkedFiles $folder ".hushlogin"
