# Collect variables
repo_id=${args[github_user]}
package=${args[package]}
path="$HOME/rush-repos/snatched"

say "snatch" "$repo_id $package"

rush clone "$repo_id" "$path" --name snatched
rush get "snatched:$package"
rush remove snatched --purge
