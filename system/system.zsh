alias nap='sudo pm-suspend'
alias off='sudo poweroff'
alias reboot='sudo reboot'

#top 10 memory consuming process
alias topmem="ps axo pid,pcpu,pmem,comm --sort=-rss | head -20"
##top 10 CPU consuming process
alias topcpu="ps axo pid,pcpu,pmem,comm --sort=-pcpu| head -20"

alias tg="ping -c2 www.google.com"

alias fu='fusermount -u'

alias dup='urxvt &'

alias wm='startx'
