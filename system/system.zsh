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
