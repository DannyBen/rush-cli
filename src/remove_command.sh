repo=${args[repo]}
purge=${args[--purge]}

echo "remove $(green "$repo")"

if [[ $purge ]] ; then
  repo_path=$(config_get "$repo")
  [[ -d $repo_path ]] && rm -rf $repo_path
fi

config_del "$repo"