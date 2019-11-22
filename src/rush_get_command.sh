# Collect variables
repo=${args[repo]:-default}
package=${args[package]}
repo_path=$(config_get "$repo")
package_path=$repo_path/$package
script=$package_path/main

# Verify we have everything we need
[[ $repo_path ]] || abort "Cannot find repo $repo"
[[ -d $package_path ]] || abort "Cannot find package $repo/$package"
[[ -f $script ]] || abort "Cannot find script $script"

# Run the script
export REPO="$repo"
echo "run $(green "$repo:$package")"
cd "$package_path"
./main
