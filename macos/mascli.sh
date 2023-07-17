#!/usr/bin/env zsh

if [[ $(uname) == "Darwin" ]]; then
    echo 'Installing MAS apps.'
else
    echo 'Runs only on macOS.'
    exit 0
fi

# Things
mas install 904280696

# iStat Menus
mas install 1319778037

# MS Word
mas install 462054704

# MS Excel
mas install 462058435

# MS Powerpoint
mas install 462062816
