#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.config/git/"

src="$dirname/gitignore"
dst="$HOME/.config/git/.gitignore"
_link "$src" "$dst"

src="$dirname/hooks"
dst="$HOME/.config/git/hooks"
_link "$src" "$dst"

# Hooks are only picked up once git is told where to look for them.
git config --global core.hooksPath "$dst"
