# git aliases
# modified from oh-my-zsh git plugin

alias g='git'
compdef g=git
alias gst='git status'
compdef _git gst=git-status
alias gp='git push'
compdef _git gp=git-push
alias gpt='git push --tags'
compdef _git gpt=git-push
alias gpoat='git push origin --all && git push origin --tags'
alias gpr="git pull --rebase"
compdef _git gpr=git-pull
alias gf='git fetch'
compdef _git gf=git-fetch
alias gr='git rebase'
compdef _git gr=git-rebase
alias gri='git rebase -i'
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
alias gra='git remote add'
compdef _git gr=git-remote
alias grv='git remote -v'
compdef _git grv=git-remote
alias grmv='git remote rename'
compdef _git grmv=git-remote
alias grrm='git remote remove'
compdef _git grrm=git-remote
alias grset='git remote set-url'
compdef _git grset=git-remote
alias grup='git remote update'
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
alias glg='git log --stat --max-count=5'
compdef _git glg=git-log
alias glgg='git log --graph --max-count=5'
compdef _git glgg=git-log
alias glgga='git log --graph --decorate --all'
compdef _git glgga=git-log
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gln="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative -n5"
alias gla="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glan="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative -n5"
alias glp="git log -p --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gss='git status -s'
compdef _git gss=git-status
alias ga='git add'
compdef _git ga=git-add
alias gm='git merge'
compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias ginit="git init && git commit --allow-empty -m'init'"

# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git

## back up branch and checkout new
## useful for fethcing private branches after forced update
function gbak(){
    currbranch=$(current_branch)
    gremote=$1
    ## if remote argument, set to origin
    : ${gremote:='origin'}
    git branch -m $currbranch.bak && \
        echo :: Backed up $currbranch && \
        git checkout -b $currbranch $gremote/$currbranch && \
        echo :: Checked out updated from $gremote
}

# cherry pick then rebase
function gcpr(){
    # 1 - branch to cherry pick to and rebase onto
    # 2 - branch to cherry pick from and rebase
    git checkout $1 && git cherry-pick $2 && git rebase -i $1 $2
}