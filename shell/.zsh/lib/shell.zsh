
alias mkn='make -n'
alias sm='snakemake -p'
alias smn='snakemake -pn'

export GREP_COLOR='1;32'

alias grep='/usr/bin/grep --color=auto'

function bgrep() {
    grep -A3 -B3 "$@"
}

alias rmrf='rm -rf'

alias rs='rsync --progress -avzu'
alias rss='rsync --progress -avzue ssh'

alias h='head -1'
alias t='tail -1'

alias lns='ln -s'
function lnp() {
    ln -s $PWD/$1 $2
}

alias diff='colordiff -u'
alias vd='vimdiff'

alias scl='screen -ls'
alias scr='screen -r'
alias scs='screen -S'

alias edd='[ -e ~/.emacs.d/server/default ] || emacs --daemon=default'
alias edm='[ -e ~/.emacs.d/server/mail ] || emacs --daemon=mail'
alias et='emacsclient -t'
alias ec='emacsclient --no-wait -c'

## Prevent unintentionally entering vi.
alias vi='vim'

alias ackt='ack TODO'
alias ackf='ack FIXME'

alias duh='du -h'

alias pp='column -t'
alias ppc='column -t -s","'

alias ndate='date +%Y%m%d'

function ris2bib() {
    ris2xml $1 | xml2bib
}

function bib2endnote() {
    bib2xml $1 | xml2end
}

## Directory

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
alias ll='ls -lh'
alias lx='ll -BXL'
alias lt='ll -tL'
alias lz='ll -SL'
