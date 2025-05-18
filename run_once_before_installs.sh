#!/bin/sh
echo -e "\n*** INSTALLING MISSING PROGRAMS ***"

### Install starship
if ! command -v starship >/dev/null 2>&1; then
    echo "starship is not installed. Running installer script..."
    curl -sS https://starship.rs/install.sh | sh -s -- --yes --bin-dir $HOME/.local/bin
else
    echo "starship is already installed. Skipping installation."
fi

### Install pyenv
if ! command -v pyenv >/dev/null 2>&1; then
    echo "pyenv is not installed. Running installer script..."
    curl -fsSL https://pyenv.run | bash
    git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
else
    echo "pyenv is already installed. Skipping installation."
fi

### Install micromamba
if ! command -v micromamba >/dev/null 2>&1; then
    echo "micromamba is not installed. Running installer script..."
    curl -Ls https://micro.mamba.pm/install.sh | bash -s -- -b -p "$HOME/.local"
else
    echo "micromamba is already installed. Skipping installation."
fi

echo -e "\n*** PLEASE RESTART THIS SHELL TO APPLY NEW INSTALLATIONS ***"
