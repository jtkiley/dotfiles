######################################################################
#
#  Aliases almost entirely borrowed. See link(s) at bottom.
#
######################################################################


######################################################################
#  PROMPT
######################################################################

#  Currently happy back with the default. May revisit.


######################################################################
#  ENVIRONMENT VARIABLES
######################################################################

#  Add python folder to the python path.
export PYTHONPATH=$PYTHONPATH:~/projects/python/contentkit

#  Use Atom as default editor.
export EDITOR="/usr/local/bin/atom -w"

# Python 3.5
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Python virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
VE=/Library/Frameworks/Python.framework/Versions/3.5/bin/virtualenvwrapper.sh
test -f $VE && source $VE
unset VE


######################################################################
#  ALIASES AND FUNCTIONS
######################################################################

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


######################################################################
#  Idea sources:
#  - http://natelandau.com/my-mac-osx-bash_profile/
#
#
######################################################################
