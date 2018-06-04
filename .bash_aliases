alias ls='ls --color=auto'

alias ll='ls -la'

alias l.='ls -d .* --color=auto'

# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gk='gitk --all&'
alias gx='gitx --all'
alias gout='git checkout'

# Tsuru specific aliases
alias kubenodes='kubectl get nodes -L tsuru.io/pool'

# kubectl aliases
alias k='kubectl'
alias ksys='kubectl -n kube-system'
