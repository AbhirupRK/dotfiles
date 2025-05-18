#!/bin/sh

### Install pyenv
if ! command -v pyenv >/dev/null 2>&1; then
    echo "pyenv is not installed. Running installer script..."
    curl -fsSL https://pyenv.run | bash
    git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
else
    echo "pyenv is installed. Skipping installation."
fi




