#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.config"

src="$dirname/starship.toml"
dst="$HOME/.config/starship.toml"
_link "$src" "$dst"
