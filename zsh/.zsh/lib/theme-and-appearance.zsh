# modified from oh-my-zsh

autoload colors; colors;
setopt auto_cd
setopt multios
setopt cdablevarS

bblack=%{$fg_bold[black]%}
red=%{$fg[red]%}
reset=%{$reset_color%}

# Apply theming defaults
PS1="%n@%m:%~%# "

# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="
["         # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX="]"             # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY="$red+$reset"    # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=""               # Text to display if the branch is clean

# Setup the prompt with pretty colors
setopt prompt_subst
