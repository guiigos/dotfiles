source "${SRC}/brew/functions.sh"

msg_start brew

echo
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo
brew update

brew tap rakalex/mac-brightnessctl
brew trust rakalex/mac-brightnessctl
brew install mac-brightnessctl

brew tap hashicorp/tap
brew trust hashicorp/tap
brew install terraform

echo
brewInstall font-fira-code-nerd-font

# =============================================================================
# VERSION CONTROL
# =============================================================================

brewInstall git
brewInstall git-lfs
brewInstall lazygit
brewInstall gh
brewInstall glab


# =============================================================================
# DEVELOPMENT ENVIRONMENT
# =============================================================================

# Runtimes & Version Managers
brewInstall nvm
brewInstall deno
brewInstall pyenv

# Cloud & Deployment
brewInstall awscli
brewInstall heroku

# HTTP & Database Clients
brewInstall httpie
brewInstall libpq

# Package & Build Tools
brewInstall pkgx
brewInstall bundletool


# =============================================================================
# AI
# =============================================================================

# Local AI
brewInstall ollama

# AI CLI
brewInstall codex
brewInstall claude-code
brewInstall gemini-cli


# =============================================================================
# SECURITY & NETWORK
# =============================================================================

brewInstall hashcat
brewInstall wireshark-app
brewInstall veracrypt-fuse-t


# =============================================================================
# IDEs & DEVELOPMENT APPLICATIONS
# =============================================================================

# Editors & IDEs
brewInstall visual-studio-code
brewInstall intellij-idea
brewInstall android-studio
brewInstall arduino-ide
brewInstall sublime-text

# Containers
brewInstall docker-desktop

# Database
brewInstall dbeaver-community
brewInstall mongodb-compass

# API
brewInstall postman


# =============================================================================
# PRODUCTIVITY & KNOWLEDGE
# =============================================================================

brewInstall notion
brewInstall obsidian
brewInstall zotero
brewInstall drawio
brewInstall google-drive


# =============================================================================
# INTERNET & COMMUNICATION
# =============================================================================

brewInstall google-chrome
brewInstall zoom


# =============================================================================
# MEDIA
# =============================================================================

# Audio
brewInstall spotify
brewInstall blackhole-2ch

# Video
brewInstall vlc
brewInstall gifcapture

# Image
brewInstall gimp

brew cleanup

msg_end brew
