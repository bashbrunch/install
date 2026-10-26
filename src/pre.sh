printf "This script will install BashBrunch on $brunch_root\n\n"
printf "If you do not want to install it there, "
printf "you have 10 seconds to quit.\n\n"

for i in {10..1}; do
  printf "\rContinuing in $i seconds... "
  sleep 1
done

printf "\rContinuing with installation...\n\n"

