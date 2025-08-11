#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

mkdir -p "$HOME/.config/helix/"

src="$dirname/config.toml"
dst="$HOME/.config/helix/config.toml"
_link "$src" "$dst"

src="$dirname/languages.toml"
dst="$HOME/.config/helix/languages.toml"
_link "$src" "$dst"
