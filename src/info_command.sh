# Collect variables
package=${args[package]}
extended=${args[--extended]}
repo="default"

if [[ $package =~ (.*):(.*) ]]; then
  repo=${BASH_REMATCH[1]}
  package=${BASH_REMATCH[2]}
fi

repo_path=$(config_get "$repo")
package_path="$repo_path/$package"
infofile="$package_path/info"

# Verify we have everything we need
[[ $repo_path ]] || abort "repo not found: $repo"
[[ -d $package_path ]] || abort "package not found: $repo/$package"
[[ -f $infofile ]] || abort "infofile not found: $infofile"

# Show the package data
if [[ $extended ]]; then
  mainfile="$package_path/main"
  undofile="$package_path/undo"

  green "info:"
  cat "$infofile"
  echo

  if [[ -f $mainfile ]]; then
    green "main:"
    cat "$mainfile"
    echo
  fi
  
  if [[ -f $undofile ]]; then
    green "undo:"
    cat "$undofile"
    echo
  fi
else
  cat "$infofile"
fi
