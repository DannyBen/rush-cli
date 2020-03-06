# Collect variables
repo_id=${args[github_user]}
package=${args[package]}

echo "snatch $(green "$repo_id $package")"

rush clone "$repo_id" --name snatched
rush get snatched:$package
rush remove snatched --purge
