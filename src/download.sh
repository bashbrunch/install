echo "Downloading Meta Files..."

dirs=$(curl -fsSL "$source_site/meta/dirs.txt")
files=$(curl -fsSL "$source_site/meta/files.txt")

mkdir -p "$brunch_root"

for dir in $dirs; do
  mkdir -p "$brunch_root/$dir"
done

for file in $files; do
  echo "Downloading source file: $file"
  curl -fsSL "$source_site/$file" > "$brunch_root/$file"
  status=$?

  if [ $status -ne 0 ]; then
    echo "Error downloading $file. Exiting."
    exit 1
  fi
done

touch "$brunch_root/data/history.txt"

