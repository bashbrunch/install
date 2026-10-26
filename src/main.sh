#!/bin/bash

set -e

export brunch_site="https://bashbrunch.attaditya.space"
export install_site="$brunch_site/install"
export source_site="$brunch_site/bashbrunch"
export brunch_root="$HOME/.bashbrunch"

printf "BashBrunch Installer Script\n\n"

if [ -d "$brunch_root/data" ]; then
  mv "$brunch_root/data" "$brunch_root.data"
fi

rm -rf "$brunch_root"
mkdir -p "$brunch_root"

if [ -d "$brunch_root.data" ]; then
  mv "$brunch_root.data" "$brunch_root/data"
fi

mkdir -p "$brunch_root"

curl -fsSL "$install_site/src/pre.sh" | bash
curl -fsSL "$install_site/src/download.sh" | bash
curl -fsSL "$install_site/src/providers.sh" | bash
curl -fsSL "$install_site/src/post.sh" | bash

printf "Installation complete!\n\n"

