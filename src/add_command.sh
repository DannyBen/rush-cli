repo=${args[repo]}
path=${args[path]}

config_set "$repo" "$path"
echo "add $(green "$repo:$path")"
