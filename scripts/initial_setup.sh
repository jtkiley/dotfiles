#!/usr/bin/env bash


# Python
pip3 install -r python.txt

# Brew
brew install $(<~/dotfiles/scripts/brew.txt)

# Atom
source "./atom_packages.sh"

# R
Rscript ~/dotfiles/scripts/r_packages.r

# SSH
source ~/Dropbox/_config/email.sh
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/id_rsa
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/github
ssh-keygen -t rsa -N '' -C $EMAIL -f ~/.ssh/bitbucket
cp ../configs/ssh_config ~/.ssh/config
