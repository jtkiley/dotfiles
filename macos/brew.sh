#!/usr/bin/env zsh

if [[ $(uname) == "Darwin" ]]; then
    echo 'Installing brew, packages, and casks.'
else
    echo 'Runs only on macOS.'
    exit 0
fi

# Brew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Packages
brew install mas

# Cask apps
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask discord
brew install --cask docker
brew install --cask elgato-control-center
brew install --cask zoom
brew install --cask geekbench
brew install --cask r
brew install --cask rstudio

# Cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro
brew install --cask font-source-serif-4
brew install --cask font-source-sans-3
brew install --cask font-libertinus
