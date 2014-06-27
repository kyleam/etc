alias mkr='make -C $(git rev-parse --show-toplevel)'

# Make a specific target from root directory, prepending the path from
# the root directory to the target.
function mkrt() {
    local root=$(git rev-parse --show-toplevel)
    local target=$(python -c \
        "import os.path; print(os.path.relpath(\"$PWD/$1\", \"$root\"))")
    make -C $root $target
}


alias mkn='make -n'

alias sm='snakemake -p'
alias smn='snakemake -pn'
