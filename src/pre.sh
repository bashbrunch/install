flags=""

for flag in "$@"; do
  flags+=$'\n'"$flag"
done

printf "This script will install BashBrunch on $brunch_root\n\n"

cancel_timer() {
  printf "If you do not want to install it there, "
  printf "you have 10 seconds to quit.\n\n"

  for i in {10..1}; do
    printf "\rContinuing in $i seconds... "
    sleep 1
  done

  printf "\rContinuing with installation...\n\n"
}

continue_flag=$(printf '%s\n' "$flags" | grep -- "^--continue$")

if [ -z "$continue_flag" ]; then
  cancel_timer
fi

