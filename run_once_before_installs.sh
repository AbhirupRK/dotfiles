#!/bin/sh
echo -e "\n*** INSTALLING MISSING PROGRAMS ***"

### Install Oh-My-ZSH
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh-My-ZSH is not installed. Running installer script..."
    sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
    echo "Oh-My-ZSH is already installed. Skipping installation."
fi

### Install Starship
if ! command -v starship >/dev/null 2>&1; then
    echo "Starship is not installed. Running installer script..."
    curl -sS https://starship.rs/install.sh | sh -s -- --yes --bin-dir $HOME/.local/bin
else
    echo "Starship is already installed. Skipping installation."
fi

### Install Pyenv
#if ! command -v pyenv >/dev/null 2>&1; then
#    echo "Pyenv is not installed. Running installer script..."
#    curl -fsSL https://pyenv.run | bash
#    git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
#else
#    echo "Pyenv is already installed. Skipping installation."
#fi

### Install Micromamba
if ! command -v micromamba >/dev/null 2>&1; then
    echo "Micromamba is not installed. Running installer script..."
    curl -Ls https://micro.mamba.pm/install.sh | bash -s -- -b -p "$HOME/.local"
else
    echo "Micromamba is already installed. Skipping installation."
fi

echo -e "\n*** PLEASE RESTART THIS SHELL TO APPLY NEW INSTALLATIONS ***"
