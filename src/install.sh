# ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗
# ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║
# ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║
# ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║
# ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
# ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝

src=$(realpath "$(dirname "$0")")

source "${src}/functions.sh"

# configure shell
file_shell="${src}/shell/global.sh"
chmod +x $file_shell
. $file_shell

# configure git
file_git="${src}/git/global.sh"
chmod +x $file_git
. $file_git

# configure homebrew
file_homebrew="${src}/homebrew/global.sh"
chmod +x $file_homebrew
. $file_homebrew

# configure node
file_node="${src}/node/global.sh"
chmod +x $file_node
. $file_node
