#!/usr/bin/env bash

######################################################################
#  Project: dotfiles
#  File: initial_setup.sh
#
#  Author: Jason T. Kiley (jkiley@icloud.com)
#  See project LICENSE for copyright and license information.
#
#  Notes:
#
######################################################################


# Atom
source "./atom_packages.sh"

# R
Rscript ~/dotfiles/scripts/r_packages.r

# Python
pip3 install -r python.txt

# Configs
cp ../configs/ssh_config ~/.ssh/config
