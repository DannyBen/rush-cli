# Collect variables
path=${args[path]}
repo_id=${args[github_user]}
use_ssh=${args[--ssh]}
full=${args[--full]}
default_repo_name=${repo_id%%/*}
repo_name=${args[--name]:-$default_repo_name}

# Adjust repo_id - defaults to $user/rush-repo
[[ $repo_id = */* ]] || repo_id="$repo_id/rush-repo"

# Set clone URL - ssh or https?
if [[ $use_ssh ]]; then
  repo_url=git@github.com:$repo_id.git
else
  repo_url=https://github.com/$repo_id.git
fi

# Set default path if not provided
[[ $path ]] || path="$HOME/rush-repos/$repo_id"

# Abort if target directory exists
[[ -d $path ]] && abort "Directory $path already exists."

set -e

# Clone
if [[ $full ]]; then
  git clone "$repo_url" "$path"
else
  git clone --depth 1 "$repo_url" "$path"
fi

# Save config
config_set "$repo_name" "$path"
