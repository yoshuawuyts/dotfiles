#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.config/git/"

src="$dirname/gitignore"
dst="$HOME/.config/git/.gitignore"
_link "$src" "$dst"
