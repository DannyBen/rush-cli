repo=${args[repo]}

pull_repo() {
  local repo_path="$1"
  local repo="$2"

  if [[ -d "$repo_path/.git" ]]; then
    echo "pull $(green "$repo")"
    ( cd "$repo_path" && git pull )
  else
    echo "skip $(blue "$repo") (not a git repo)"
  fi
}

if [[ $repo ]]; then
  repo_path=$(config_get "$repo")
  [[ $repo_path ]] || abort "no such repo: $repo"
  pull_repo "$repo_path" "$repo"
else
  for k in $(config_keys); do
    pull_repo "$(config_get "$k")" "$k"
  done
fi

