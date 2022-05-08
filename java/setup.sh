#! /bin/sh
ghq --version > /dev/null && peco --version > /dev/null
if [ $? -ne 0 ]; then
    if [ -d "$1" ]; then
        ln -snfv "$(pwd)/devcontainer/" "$1/.devcontainer"
        exit 0
    fi
    echo "ARG1 is not directory. $1"
    exit 1
fi

target=$(ghq list $1 | peco)
if [ -n "$target" ]; then
    ln -snfv "$(pwd)/devcontainer/" "$(ghq root)/$target/.devcontainer"
    exit 0
fi
echo "canceled."
