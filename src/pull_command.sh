repo=${args[repo]}

pull_repo() {
  repo_path="$1"

  if [[ -d "$repo_path/.git" ]]; then
    printf "pull $(green "$repo_path")\n"
    git -C "$repo_path" pull
  else
    printf "skip $(blue "$repo_path") (not a git repo)\n"
  fi
}

if [[ $repo ]]; then
  repo_path=$(config_get "$repo")
  [[ $repo_path ]] || abort "no such repo: $repo"
  pull_repo "$repo_path"
else
  for k in $(config_keys); do
    pull_repo "$(config_get "$k")"
  done
fi

