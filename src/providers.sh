providers=$(curl -fsSL "$install_site/data/providers.txt")
provider_dir="$brunch_root/providers"
provider_file="$brunch_root/data/provider.txt"
model_dir="$brunch_root/data/models"

for provider in $providers; do
  provider_site="$source_site/providers/$provider.sh"
  model_file="$model_dir/$provider.txt"

  curl -fsSL "$provider_site" > "$provider_dir/$provider.sh"

  if [ ! -f "$model_file" ]; then
    echo "unset" > "$model_file"
  fi
done

if [ ! -f "$provider_file" ]; then
  echo "unset" > "$provider_file"
fi

