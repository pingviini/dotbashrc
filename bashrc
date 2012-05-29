# ~/.bashrc: executed by bash(1) for non-login shells.

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
if [ -f ~/.bash/bash_aliases ]; then
    . ~/.bash/bash_aliases
fi

export WORKON_HOME=$HOME/Virtualenvs
export PROJECT_HOME=$HOME/workspace
export VIRTUALENV_USE_DISTRIBUTE=true
source /usr/local/bin/virtualenvwrapper.sh

# Add cooler prompt
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
    PS1='\[\e]0;\w\a\]\n\[\e[31m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
else # normal
    PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
fi

if [ -f ~/.rvm/scripts/rvm ]; then
    PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
    rvm use 1.9.2
fi

export TERM="xterm-256color"

export GREP_COLORS="ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36"
