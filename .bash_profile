parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' -e 's/^[ \t]*//'
}

export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]:\[\033[00m\]\[\033[31m\]\$(parse_git_branch)\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

export GOPATH=$HOME/projects
export EDITOR='vim'

export DOCKER_HOST=tcp://192.168.99.100:2375
unset DOCKER_TLS_VERIFY
unset DOCKER_CERT_PATH
