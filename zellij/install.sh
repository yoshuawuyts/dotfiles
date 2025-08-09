#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.config/zellij"

src="$dirname/config.kdl"
dst="$HOME/.config/zellij/config.kdl"
_link "$src" "$dst"
