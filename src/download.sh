dirs=$(curl -fsSL "$source_site/meta/dirs.txt")
files=$(curl -fsSL "$source_site/meta/files.txt")

mkdir -p "$brunch_root"

for dir in $dirs; do
  mkdir -p "$brunch_root/$dir"
done

for file in $files; do
  curl -fsSL "$source_site/$file" > "$brunch_root/$file"
done

touch "$brunch_root/data/history.txt"

