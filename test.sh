# set -x

declare -a A=(one two three)
declare -a B=()

foo() {
  echo $1
  declare -a bar="${!1}"

  echo "contents: ${bar[@]}"
  echo "indexes: ${#bar[@]}"
  echo items
  for item in "${bar[@]}"; do
    echo $item
  done
}

echo ${A[@]}
echo ${B[@]}
foo A[@]
foo B[@]
