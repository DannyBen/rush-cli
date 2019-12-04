show_repo_list() {
  local repo deep regex package glob glob_deep repo_path

  repo="$1"
  deep="${args[--deep]}"
  search="${args[--search]}"

  repo_path=$(config_get "$repo")

  [[ $repo_path ]] || abort "Cannot find repo $repo"

  green "$repo:"

  glob=( "$repo_path"/*/info )

  [[ $deep ]] && glob_deep=( "$repo_path"/**/*/info )

  for infofile in "${glob[@]}" "${glob_deep[@]}"; do
    if [[ $search ]]; then
      regex="$repo_path/(.*${search}.*)/info"
    else
      regex="$repo_path/(.*)/info"
    fi

    if [[ $infofile =~ $regex ]]; then
      package="${BASH_REMATCH[1]}"
      printf "  %-26s $(head -1 "$infofile")\n" "$(blue "$package")"
    fi
  done

  echo
}

local repo=${args[repo]}

if [[ $repo ]]; then
  show_repo_list "$repo"
else
  for k in $(config_keys); do
    show_repo_list "$k"
  done
fi
