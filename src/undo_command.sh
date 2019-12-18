# Collect variables
package=${args[package]}
repo="default"

if [[ $package =~ (.*):(.*) ]]; then
  repo=${BASH_REMATCH[1]}
  package=${BASH_REMATCH[2]}
fi

repo_path=$(config_get "$repo")
package_path=$repo_path/$package
script=$package_path/undo

# Verify we have everything we need
[[ $repo_path ]] || abort "repo not found: $repo"
[[ -d $package_path ]] || abort "package not found: $repo:$package"
[[ -f $script ]] || abort "script not found: $script"

# Run the script (make it executable if it isnt first)
export REPO="$repo"
export REPO_PATH="$repo_path"
echo "run $(green "$repo:$package")"
[[ -x "$script" ]] || chmod u+x "$script"
cd "$package_path"
./undo
