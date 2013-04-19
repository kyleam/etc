alias rmrf='rm -rf'

alias rs='rsync --progress -avzu'
alias rss='rsync --progress -avzue ssh'

alias h='head -1'
alias t='tail -1'

alias c='clear'

alias mylast='(echo "## $(date)" && fc -l -1 | cut -d " " -f3-)'
alias ch='mylast >> command-history'

alias history='fc -l 1'

alias lns='ln -s'
function lnp() {
    ln -s $PWD/$1 $2
}

## send all output to dev null
function dn(){
    echo :: Ignoring all output of "$@"
    "$@" > /dev/null 2>&1
}

alias diff='colordiff -u'
alias vd='vimdiff'

alias scl='screen -ls'
alias scr='screen -r'
alias scs='screen -S'

alias et='emacsclient -t'
alias ec='emacsclient --no-wait -c'