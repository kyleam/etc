
if [[ -d "$HOME/share/zsh" ]]; then
    fpath=( $fpath $HOME/share/zsh/$ZSH_VERSION/functions )
fi
autoload -U compinit
compinit -i

autoload -U colors && colors
PS1="[%m: %c]%# "

for config_file in $ZSH_LIB/*; do
    source $config_file
done
