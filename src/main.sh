#!/bin/bash

set -e

export brunch_site="https://bashbrunch.attaditya.space"
export source_site="$brunch_site/bashbrunch"
export brunch_root="$HOME/.bashbrunch"

printf "BashBrunch Installer Script\n\n"

if [ -d "$brunch_root/data" ]; then
  mv "$brunch_root/data" "$brunch_root.data"
fi

if [ -d "$brunch_root/extensions" ]; then
  mv "$brunch_root/extensions" "$brunch_root.extensions"
fi

rm -rf "$brunch_root"
mkdir -p "$brunch_root"

if [ -d "$brunch_root.data" ]; then
  mv "$brunch_root.data" "$brunch_root/data"
fi

if [ -d "$brunch_root.extensions" ]; then
  mv "$brunch_root.extensions" "$brunch_root/extensions"
fi

mkdir -p "$brunch_root"
script_site="$brunch_site/install/src"

curl -fsSL "$script_site/pre.sh" | bash
curl -fsSL "$script_site/download.sh" | bash
curl -fsSL "$script_site/providers.sh" | bash
curl -fsSL "$script_site/post.sh" | bash

printf "Installation complete!\n\n"

