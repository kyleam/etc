
if [[ -d "$HOME/share/zsh" ]]; then
    fpath=( $fpath $HOME/share/zsh/$ZSH_VERSION/functions )
fi
autoload -U compinit
compinit -i

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

autoload -U colors && colors
PS1="[%m: %c]%# "

for config_file in $ZSH_LIB/*; do
    source $config_file
done
