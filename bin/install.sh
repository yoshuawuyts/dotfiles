#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.local/bin"

src="$dirname/mx"
dst="$HOME/.local/bin/mx"
_link "$src" "$dst"
