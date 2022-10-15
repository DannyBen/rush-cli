# Collect variables
repo_id=${args[github_user]}
package=${args[package]}
path="$HOME/rush-repos/snatched"
[[ -n "${args['--force']}" ]] && export FORCE=1
[[ -n "${args['--verbose']}" ]] && export VERBOSE=1

cleanup() {
  rush remove snatched --purge
}

say "snatch" "$repo_id $package"

trap cleanup EXIT ERR INT TERM

rush clone "$repo_id" "$path" --name snatched
rush get "snatched:$package"
