setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups
alias to='pushd'
alias ot='popd'

alias ..='cd ..'

alias md='mkdir -p'
function mds() { mkdir -p "$1" && cd "$1"; }

alias td='tree -d'
alias ta='tree -aI ".git"'

alias ls='ls --color'
alias la='ls -Ah'
alias lla='ls -lAhL'
alias l='ls -lhL'
# show links
alias ll='ls -lh'
# by ext
alias lx='ll -BXL'
# by date
alias lt='ll -tL'
# by size
alias lz='ll -SL'
