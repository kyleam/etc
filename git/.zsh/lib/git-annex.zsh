alias gx='git annex'
alias gxg='git annex get'
alias gxd='git annex drop'
alias gxa='git annex add'
alias gxmv='git annex move'
alias gxs='git annex sync'
alias gxm='git annex merge'
alias gxcp='git annex copy'
alias gxl='git annex lock'
alias gxls='git annex list --allrepos'
alias gxu='git annex unlock'
alias gxw='git annex whereis'

alias gxt='git annex metadata'
alias gxv='git annex view'
alias gxvp='git annex vpop'

# Clear all git annex views.
function gxclear () {
    branch=$1
    : ${branch:='master'}
    git checkout "$branch"
    git for-each-ref --format='%(refname:short)' \
        'refs/heads/views' | \
        xargs git branch -D
    rm $(git rev-parse --show-toplevel)/.git/annex/viewlog
}
