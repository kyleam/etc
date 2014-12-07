export GREP_COLOR='1;32'

alias grep='/usr/bin/grep --color=auto'

# block grep
function bgrep() {
    grep -A3 -B3 "$@"
}
