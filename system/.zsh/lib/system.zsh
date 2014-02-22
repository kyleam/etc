alias nap='sudo systemctl suspend'
alias off='sudo systemctl poweroff'
alias reboot='sudo systemctl reboot'

#top 10 memory consuming process
alias topmem="ps axo pid,pcpu,pmem,comm --sort=-rss | head -11"
##top 10 CPU consuming process
alias topcpu="ps axo pid,pcpu,pmem,comm --sort=-pcpu| head -11"

alias tg="ping -c2 www.google.com"
alias fu='fusermount -u'
alias dup='urxvt &'
alias am='alsamixer'

function lock () {
    if [[ -z $(pgrep xscreensaver) ]]; then
        xscreensaver -no-splash &
    fi
    xscreensaver-command --lock
}

## Mount encfs from the name of a public encfs mount point in the
## present directory. The private directory is assumed to have the same
## name as public, plus a leading dot.
function eps () {
    encfs $PWD/.$1 $PWD/$1
}
