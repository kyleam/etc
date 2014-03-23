# set by default in arch but not debian
if [[ -z "$XDG_CONFIG_HOME" ]]; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [[ -z "$XDG_DATA_HOME" ]]; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [[ -z "$XDG_CACHE_HOME" ]]; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

ZSH=$HOME/.zsh
ZSH_LIB=$ZSH/lib

if [[ -d "$HOME/share/zsh" ]]; then
    fpath=( $fpath $HOME/share/zsh/$ZSH_VERSION/functions )
fi
autoload -U compinit
compinit -i

ZSH_THEME="mytheme-red"  # overridden by computer-specific setup

for config_file in $ZSH_LIB/*; do
    source $config_file
done

source $ZSH/themes/$ZSH_THEME.zsh-theme