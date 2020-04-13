set +e
repo=${args[repo]}
message=${args[--message]:-"automatic commit"}

push_repo() {
  local repo_path="$1"
  local repo="$2"

  if [[ -d "$repo_path/.git" ]]; then
    say "push" "$repo"
    (
      set -e
      cd "$repo_path"
      git add . --all
      find . -type f \( -name main -o -name undo \) -exec git update-index --chmod +x {} \;
      git commit -am "$message"
      git push
    )
  else
    say "push" "skipping $repo (not a git repo)"
  fi
}

if [[ $repo ]]; then
  repo_path=$(config_get "$repo")
  [[ $repo_path ]] || abort "no such repo: $repo"
  push_repo "$repo_path" "$repo"
else
  for k in $(config_keys); do
    push_repo "$(config_get "$k")" "$k"
  done
fi

