#!/usr/bin/env bash

#  -------------------------------------------------------------------
#  Project: dotfiles
#  File: install_packages.sh
#
#  Author: Jason T. Kiley (jkiley@icloud.com)
#  Copyright waived; public domain.
#
#  Notes:
#
#  -------------------------------------------------------------------


# Atom
source "./atom_packages.sh"

# R
Rscript ~/dotfiles/scripts/r_packages.r
