#!/bin/sh

### Install starship
if ! command -v starship >/dev/null 2>&1; then
    echo "starship is not installed. Running installer script..."
    curl -sS https://starship.rs/install.sh | sh -s -- --yes --bin-dir $HOME/.local/bin
else
    echo "starship is installed. Skipping installation."
fi

### Install pyenv
if ! command -v pyenv >/dev/null 2>&1; then
    echo "pyenv is not installed. Running installer script..."
    curl -fsSL https://pyenv.run | bash
    git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
else
    echo "pyenv is installed. Skipping installation."
fi


echo "\n PLEASE RESTART THIS SHELL TO APPLY NEW INSTALLATIONS."

