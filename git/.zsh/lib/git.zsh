# git aliases
# modified from oh-my-zsh git plugin

alias g='git'
compdef g=git
alias gp='git push'
compdef _git gp=git-push
alias gf='git fetch'
compdef _git gf=git-fetch
alias gfp='git fetch --prune'
compdef _git gfp=git-fetch
alias gr='git rebase'
compdef _git gr=git-rebase
alias gri='git rebase -i'
compdef _git gri=git-rebase
alias grc='git rebase --continue'
compdef _git gri=git-rebase
alias gd='git diff'
compdef _git gd=git-diff
alias gdc='git diff --cached'
compdef _git gdc=git-diff
alias gdw='git diff --word-diff'
compdef _git gdw=git-diff
alias gds='git diff --stat'
compdef _git gds=git-diff
alias gc='git commit -v'
compdef _git gc=git-commit
alias gca='git commit -v -a'
compdef _git gc=git-commit
alias gcaa='git commit -v -a --amend'
compdef _git gcaa=git-commit
alias gcam="git commit -a -m'auto'"
alias gco='git checkout'
compdef _git gco=git-checkout
alias gcm='git checkout master'
alias gcb='git checkout -b'
compdef _git gcb=git-checktout
alias gct='git checkout -t'
compdef _git gct=git-checktout
alias grv='git remote -v'
compdef _git grv=git-remote
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch
alias gbm='git branch -m'
compdef _git gbm=git-branch
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
_gl_format=(format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset')
alias gl="git log --graph --pretty='${_gl_format[@]}' --abbrev-commit --date=relative"
alias gla="git log --all --graph --pretty='${_gl_format[@]}' --abbrev-commit --date=relative"
alias glp="git log -p --graph --pretty='${_gl_format[@]}' --abbrev-commit --date=relative"
alias gss='git status -s'
compdef _git gss=git-status
alias ga='git add'
compdef _git ga=git-add
alias gm='git merge'
compdef _git gm=git-merge
alias gre='git reset'
compdef _git gre=git-reset
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'

## mr aliases
alias mrap='mr auto; mr push'
alias mru='mr update'
