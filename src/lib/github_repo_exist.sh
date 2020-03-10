# if github_repo_exist dannyben/rush-cli ; then ...
github_repo_exist() {
  repo="$1"
  curl -s -o /dev/null -I -w "%{http_code}"  "https://api.github.com/repos/$repo" | grep 200 > /dev/null
}
