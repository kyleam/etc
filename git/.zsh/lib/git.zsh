# git aliases
# modified from oh-my-zsh git plugin

alias g='git'
compdef g=git
alias gp='git push'
compdef _git gp=git-push
alias gpt='git push --tags'
compdef _git gpt=git-push
alias gpr="git pull --rebase"
compdef _git gpr=git-pull
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
alias gdw='git diff --word-diff'
compdef _git gdw=git-diff
alias gdt='git difftool'
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
alias gra='git remote add'
compdef _git gr=git-remote
alias grv='git remote -v'
compdef _git grv=git-remote
alias grmv='git remote rename'
compdef _git grmv=git-remote
alias grp='git remote prune'
compdef _git grp=git-prune
alias grrm='git remote remove'
compdef _git grrm=git-remote
alias grset='git remote set-url'
compdef _git grset=git-remote
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch
alias gbm='git branch -m'
compdef _git gbm=git-branch
alias gcount='git shortlog -sn'
compdef gcount=git
alias gcl='git config --list'
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias gg='git grep -n'
compdef _git gr=git-grep
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
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias ginit="git init && git commit --allow-empty -m'init'"

# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'

## mr aliases
alias mrap='mr auto; mr push'
alias mru='mr update'
