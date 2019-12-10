# Interactive approval testing for Bash.
# Author: Danny Ben Shitrit (https://github.com/dannyben)
#
# This utility will compare the output of a command with an expected output
# stored in the approvals folder.
# 
# - When the approval file does not exist, the actual output will be shown to
#   you, and you will be prompted to approve (and save) it.
# - When the approval file exists, but contains different data, the diff will
#   be shown to you, and you will be prompted to approve (and save) it.
# - When the approval file exists and contains matching data, the approval
#   test will pass.
# - When a new/updated approval is rejected, we will exit immediately with
#   exit code 1
# - When running in a CI environment (CI variable exists), we will run in non
#   interactive mode (so tests will fail automatically if they do not match).
#
# Usage
#   source approvals.bash
#   approve <command> [<approval file name>]
#
# Exapmple
#   approve "ls -la"
#   approve "ls -la" "ls"
#
approve() {
  local expected
  local cmd=$1
  local actual=$(eval $cmd 2>&1)
  local approval=$(printf "$cmd" | tr -s -c [:alnum:] _)
  local approval_file="approvals/${2:-"$approval"}"

  [[ -d "approvals" ]] || mkdir approvals

  if [[ -f "$approval_file" ]]; then
    expected=$(cat "$approval_file")
  else
    echo "--- [$(blue "$cmd")] ---"
    printf "$actual\n"
    echo "--- [$(blue "$cmd")] ---"
    expected="$actual"
    user_approval "$cmd" "$actual" "$approval_file"
  fi

  if [[ "$(printf "$actual")" = "$(printf "$expected")" ]]; then
    green "\rPASS $cmd"
  else
    echo "--- [$(blue "$cmd")] ---"
    diff --unified --color=always <(printf "$expected") <(printf "$actual" )  | tail -n +4
    echo "--- [$(blue "$cmd")] ---"
    user_approval "$cmd" "$actual" "$approval_file"
  fi
}

user_approval() {
  local cmd="$1"
  local actual="$2"
  local approval_file="$3"

  if [[ $CI ]]; then
    red "\rFAIL $cmd"
    exit 1
  fi

  echo 
  printf "[A]pprove? \n"
  read -n 1 response
  if [[ $response =~ [Aa] ]]; then
    printf "$actual\n" > "$approval_file"
    green "\rPASS $cmd"
  else
    red "\rFAIL $cmd"
    exit 1
  fi
}

red() { printf "\e[31m$*\e[0m\n" ; }
green() { printf "\e[32m$*\e[0m\n" ; }
blue() { printf "\e[34m$*\e[0m\n" ; }
