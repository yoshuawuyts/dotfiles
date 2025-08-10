#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"
source "$dirname/../scripts/_shared.sh"

src="$dirname/aerospace.toml"
dst="$HOME/.aerospace.toml"
_link "$src" "$dst"
