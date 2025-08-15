#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

src="$dirname"
dst="$HOME/.config/nvim"
_link "$src" "$dst"
