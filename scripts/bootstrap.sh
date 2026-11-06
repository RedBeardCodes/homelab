#!/usr/bin/env bash

function die() {
	echo "$@"
	exit 1
}

binaries=( python3 )

for b in ${binaries[@]}; do
	which -s ${b} || die "${b} is not installed"
done

python3 -m venv --prompt "homelab" .venv
source .venv/bin/activate && pip install -r scripts/requirements.txt

