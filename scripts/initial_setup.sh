#!/usr/bin/env bash


# Python
pip3 install -r python.txt

# Brew
brew install $(<~/dotfiles/scripts/brew.txt)

# Atom
source "./atom_packages.sh"

# R
Rscript ~/dotfiles/scripts/r_packages.r

# Configs
cp ../configs/ssh_config ~/.ssh/config
