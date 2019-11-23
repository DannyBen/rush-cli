# Collect variables
repo=${args[repo]:-default}
package=${args[package]}
repo_path=$(config_get "$repo")
package_path=$repo_path/$package
infofile=$package_path/info

# Verify we have everything we need
[[ $repo_path ]] || abort "repo not found: $repo"
[[ -d $package_path ]] || abort "package not found: $repo/$package"
[[ -f $infofile ]] || abort "infofile not found: $infofile"

# Show the info file
cat "$infofile"
