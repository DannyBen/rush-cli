# Collect variables
repo_id=${args[github_user]}
package=${args[package]}
path="$HOME/rush-repos/snatched"
export FORCE=${args['--force']}
export VERBOSE=${args['--verbose']}

cleanup() {
  rush remove snatched --purge
}

say "snatch" "$repo_id $package"

trap cleanup EXIT ERR INT TERM

rush clone "$repo_id" "$path" --name snatched
rush get "snatched:$package"
