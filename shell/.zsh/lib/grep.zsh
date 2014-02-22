export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# block grep
function bgrep() {
    grep -A3 -B3 "$@"
}
