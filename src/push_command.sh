repo=${args[repo]}
message=${args[--message]:-"automatic commit"}

push_repo() {
  local repo_path="$1"
  local repo="$2"

  if [[ -d "$repo_path/.git" ]]; then
    echo "push $(green "$repo")"
    git -C "$repo_path" add . --all && git -C "$repo_path" commit -am "$message" && git -C "$repo_path" push
  else
    echo "skip $(blue "$repo") (not a git repo)"
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

