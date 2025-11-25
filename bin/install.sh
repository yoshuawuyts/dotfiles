#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.local/bin"

src="$dirname/mx"
dst="$HOME/.local/bin/mx"
_link "$src" "$dst"

src="$dirname/zs"
dst="$HOME/.local/bin/zs"
_link "$src" "$dst"

src="$dirname/rename"
dst="$HOME/.local/bin/rename"
_link "$src" "$dst"

src="$dirname/retry"
dst="$HOME/.local/bin/retry"
_link "$src" "$dst"

src="$dirname/git-filter-repo"
dst="$HOME/.local/bin/git-filter-repo"
_link "$src" "$dst"

