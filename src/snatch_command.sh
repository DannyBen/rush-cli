# Collect variables
repo_id=${args[github_user]}
package=${args[package]}

# Cleanup function
cleanup () {
  [[ $repo_path ]] || return
  rm -rf $repo_path &> /dev/null
}

# Adjust repo_id - defaults to $user/rush-repo
[[ $repo_id = */* ]] || repo_id="$repo_id/rush-repo"

# Set clone URL - ssh or https?
repo_url=https://github.com/$repo_id.git

set -e

# Set clone path and register cleanup function
repo_path=$(mktemp -d -t rush-XXXXXXXXXX)
trap cleanup EXIT ERR INT TERM

# Clone
git clone --depth 1 "$repo_url" "$repo_path"

# Set package variables
package_path=$repo_path/$package
script=$package_path/main

# Verify we have everything we need
[[ -d $package_path ]] || abort "package not found: $repo_id $package"
[[ -f $script ]] || abort "script not found: $script"

# Run the script (make it executable if it isnt first)
export REPO="$repo"
export REPO_PATH="$repo_path"
[[ -z "$USER_CWD" ]] && export USER_CWD="$PWD"
echo "run $(green "$repo_id $package")"
[[ -x "$script" ]] || chmod u+x "$script"
cd "$package_path"
./main
