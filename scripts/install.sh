#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"

dirs="$(ls "$dirname/../")"

for dir in $dirs; do
    if [[ -d "$dir" ]]; then
	if [[ "$dir" == "scripts" ]]; then
            continue
        fi

	if [[ -f "$dir"/install.sh ]]; then
            echo "==== '$dir' ===="
	    ./"$dir"/install.sh
	fi
    fi
done
