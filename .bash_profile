#  -------------------------------------------------------------------
#  Project: dotfiles
#  File: .bash_profile
#
#  Author: Jason T. Kiley (jkiley@icloud.com)
#
#  Notes: Generally borrowed or adapted from listed sources.
#         All claims of copyright waived for anything I did.
#
#  -------------------------------------------------------------------

#  -------------------------------------------------------------------
#  Sections:
#
#  1. Prompt
#  2. Environment variables
#  3. Aliases and command functions
#
#
#  Note: Organization inspired by
#        http://natelandau.com/my-mac-osx-bash_profile/
#  -------------------------------------------------------------------


#  -------------------------------------------------------------------
#  1. PROMPT
#  -------------------------------------------------------------------

#  Currently happy back with the default. May revisit.


#  -------------------------------------------------------------------
#  2. ENVIRONMENT VARIABLES
#  -------------------------------------------------------------------

#  Add python folder to the python path.
export PYTHONPATH=$PYTHONPATH:~/projects/python/contentkit

#  Use Textmate as default editor.
export EDITOR="/usr/local/bin/mate -w"

# Python 3.4
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH


#  -------------------------------------------------------------------
#  3. ALIASES AND FUNCTIONS
#  -------------------------------------------------------------------

#  ls
alias l='ls -A'
alias ls='ls -G'
alias ll='ls -FlA'
alias lf='ls -F'

#  File commands
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
mcd () { mkdir -p "$1" && cd "$1"; }

#  Navigation commands
cd() { builtin cd "$@"; ll; }
alias ~='cd ~'
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

#  Terminal and shell
alias c='clear'
alias path='echo -e ${PATH//:/\\n}'
alias DT='tee ~/Desktop/term_output.txt'

#  Mac specific
alias f='open -a Finder ./'
alias edit='mate'
trash () { command mv "$@" ~/.Trash ; }
ql () { qlmanage -p "$*" >& /dev/null; }


#  -------------------------------------------------------------------
#  Idea sources:
#  - http://natelandau.com/my-mac-osx-bash_profile/
#
#
#
#
#
#  -------------------------------------------------------------------
