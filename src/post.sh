chmod +x "$brunch_root/brunch.sh"
chmod +x "$brunch_root/providers/"*.sh

printf "\n"

add_alias() {
  echo "Adding alias to your shell configuration file..."

  shell_config="$HOME/.bashrc"

  if [ "$SHELL" = "/bin/zsh" ]; then
    shell_config="$HOME/.zshrc"
  fi

  echo "" >> "$shell_config"
  echo "# BashBrunch alias" >> "$shell_config"
  echo "" >> "$shell_config"
  echo "export BRUNCH_ROOT='$brunch_root'" >> "$shell_config"
  echo "alias brunch='$brunch_root/brunch.sh'" >> "$shell_config"
  echo "" >> "$shell_config"

  printf "Added alias to $shell_config.\n\n"
  printf "Run: source $shell_config\n"
}

if [ -n "$BRUNCH_ROOT" ]; then
  printf "Alias already exists.\n\n"
else
  add_alias
fi

echo "Run: brunch"
echo ""

