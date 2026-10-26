chmod +x "$brunch_root/brunch.sh"
chmod +x "$brunch_root/providers/"*.sh

echo "Adding alias to your shell configuration file..."

shell_config="$HOME/.bashrc"

if [ "$SHELL" = "/bin/zsh" ]; then
  shell_config="$HOME/.zshrc"
fi

echo "" >> "$shell_config"
echo "# BashBrunch alias" >> "$shell_config"
echo "" >> "$shell_config"
echo "alias brunch='$brunch_root/brunch.sh'" >> "$shell_config"
echo "export BRUNCH_ROOT='$brunch_root'" >> "$shell_config"
echo "" >> "$shell_config"

echo "Added alias to $shell_config. Run: source $shell_config"

echo ""
echo "You can now run BashBrunch by typing 'brunch' in your terminal."
echo ""

