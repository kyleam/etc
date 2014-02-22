blue=%{$fg[blue]%}

if command -v git > /dev/null; then
PROMPT='
$bblack%T $reset%n@$blue%m$reset: %~  $(git_prompt_info)
> $reset'
else
PROMPT='
$bblack%T $reset%n@$blue%m$reset:
> '
fi
