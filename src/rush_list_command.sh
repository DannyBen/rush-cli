show_repo_list() {
  repo="$1"
  repo_path=$(config_get "$repo")

  [[ $repo_path ]] || abort "Cannot find repo $repo"
  
  green "$repo:"

  for package in "$repo_path"/*/; do
    infofile="${package}info"
    regex="$repo_path/(.*)/"
    if [[ $package =~ $regex ]]; then
      package_name="${BASH_REMATCH[1]}"

      if [[ -f $infofile ]]; then
        printf "  %-26s $(head -1 "$infofile")\n" "$(blue "$package_name")"
      else
        printf "  %-26s (no info)\n" "$(blue "$package_name")"
      fi
    fi
  done

  echo
}

repo=${args[repo]}

if [[ $repo ]]; then
  show_repo_list "$repo"
else
  for k in $(config_keys); do
    show_repo_list "$k"
  done
fi

