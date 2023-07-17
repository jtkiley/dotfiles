#!/bin/zsh

if [[ $(uname) == "Darwin" ]]; then
    echo 'Installing brew, packages, and casks.'
else
    echo 'Runs only on macOS.'
    exit 0
fi

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

# Cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro
brew install --cask font-source-serif-4
brew install --cask font-source-sans-3
brew install --cask font-libertinus
