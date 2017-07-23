alias nap='sudo systemctl suspend'
alias off='sudo systemctl poweroff'
alias reboot='sudo systemctl reboot'

alias topmem="ps axo pid,pcpu,pmem,comm --sort=-rss | head -11"
alias topcpu="ps axo pid,pcpu,pmem,comm --sort=-pcpu| head -11"

alias fu='fusermount -u'
alias dup='urxvt &'
alias am='alsamixer'

alias wm='startx'
