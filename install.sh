#!/usr/bin/env bash

if [ -z "${BASH_VERSION:-}" ]; then
    abort "Bash is required to interpret this script."
fi

# Ask for sudo password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `install.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Variables
DOTFILESLOCATION="$HOME/.dotfiles"

# Functions
function is-executable() {
    type "$1" > /dev/null 2>&1
}

# ==========================
# | PREINSTALL             |
# ==========================

# APT update and upgrade:
sudo apt update -y
sudo apt upgrade -y



# ==========================
# | Install packages       |
# ==========================

# CURL:
if  ! is-executable "curl"; then
    sudo apt install curl
fi

# HOMEBREW self
if ! is-executable brew; then
    echo "Installing Homebrew..."; 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";
fi

# HOMEBREW magic
if is-executable brew; then
	echo "Homebrew is installed."
    brew bundle --verbose;
fi

# VSCODE self
if  ! is-executable "code"; then
    sudo snap install code --classic
fi

# VSCODE magic
echo "→ Installing VSCode extensions..."
input="$DOTFILESLOCATION/Codefile"
while IFS= read -r line
    do
	    code --install-extension $line
    done < "$input"

# BRAVE
    sudo snap install shortwave # or code-insiders
    sudo snap install brave # or code-insiders
    sudo snap install telegram-desktop
    sudo snap install obsidian --classic





