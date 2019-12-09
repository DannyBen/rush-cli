show_repo_list() {
  repo_or_package="$1"
  search="${args[--search]}"
  repo="$1"

  if [[ $repo_or_package =~ (.*):(.*) ]]; then
    repo=${BASH_REMATCH[1]}
    package=${BASH_REMATCH[2]}
  fi

  repo_path=$(config_get "$repo")

  if [[ ! $repo_path ]]; then
    package="$repo"
    repo="default"
    repo_path=$(config_get "$repo")
  fi

  green "$repo:"

  if [[ $package ]]; then
    glob=( "$repo_path"/"$package"/*/info )
  else
    glob=( "$repo_path"/*/info )
  fi

  if [[ ${glob[0]} =~ \* ]]; then
    infofile="$repo_path/$package/info"
    if [[ -f "$infofile" ]]; then
      info=$(head -1 "$infofile" 2> /dev/null)
      printf "  %-26s $info\n" "$(blue "$package")"
    else
      red "  no matches"
    fi
  
  else
    for infofile in "${glob[@]}"; do
      if [[ $search ]]; then
        regex="$repo_path/(.*${search}.*)/info"
      else
        regex="$repo_path/(.*)/info"
      fi

      if [[ $infofile =~ $regex ]]; then
        package_name="${BASH_REMATCH[1]}"
        info=$(head -1 "$infofile" 2> /dev/null)
        printf "  %-26s $info\n" "$(blue "$package_name")"
      fi
    done
  fi

  echo
}

repo_or_package=${args[repo_or_package]}

if [[ $repo_or_package ]]; then
  show_repo_list "$repo_or_package"
else
  for k in $(config_keys); do
    show_repo_list "$k"
  done
fi
