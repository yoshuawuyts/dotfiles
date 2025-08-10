#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

src="$dirname/wezterm.lua"
dst="$HOME/.wezterm.lua"
_link "$src" "$dst"
