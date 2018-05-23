
# History
export HISTCONTROL=erasedups
export HISTSIZE=99999999999999999999999999999999999999999999999
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

source "/home/andrestc/bin/kube-ps1.sh"
source "/home/andrestc/bin/z.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
if [ -f ~/.bash_exports ]; then
    . ~/.bash_exports
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    fi
fi
