say() {
  printf "%-20s | %s\n" "$(magenta $1)" "$(bold "${*:2}")"
}