#!/usr/bin/env bash
# Note: this script is intended to be executed inside a clean Alpine docker

source approvals.bash

# before all
git config --global user.email "approval@tester.com"
git config --global user.name "Approval Tester"

describe "usage"
  approve "rush"
  approve "rush --help"

describe "add"
  approve "rush add"
  approve "rush add -h"
  approve "rush add sample ~/rush-repos/sample-repo"
  approve "ls ~/rush-repos/sample-repo" "rush_add_ls"

describe "clone"
  rm -rf /root/rush-repos/dannyben
  approve "rush clone"
  approve "rush clone -h"
  approve "rush clone dannyben"

describe "config"
  approve "rush config"
  approve "rush config -h"

describe "default"
  approve "rush default"
  approve "rush default -h"
  approve "rush default sample"

describe "get"
  approve "rush add sample ~/rush-repos/sample-repo"
  approve "rush get"
  approve "rush get -h"
  approve "rush get hello"
  approve "rush get download"
  approve "rush get sample:hello"
  approve "rush hello"
  approve "rush get package-in-package/one"

describe "undo"
  approve "rush undo"
  approve "rush undo -h"
  approve "rush undo download"
  approve "rush undo sample:download"

describe "info"
  approve "rush info"
  approve "rush info -h"
  approve "rush info hello"
  approve "rush info sample:hello"
  approve "rush info hello --extended"
  approve "rush info download -x"

describe "pull"
  approve "rush pull"
  approve "rush pull -h"

describe "push"
  approve "rush push"
  approve "rush push -h"

describe "remove"
  approve "rush remove"
  approve "rush remove -h"
  approve "rush remove dannyben"

describe "list"
  approve "rush list -h"
  approve "rush list"
  approve "rush list --simple"
  approve "rush list hello"
  approve "rush list sample"
  approve "rush list nested"
  approve "rush list sample:nested"
  approve "rush list no-such-package"

describe "search"
  approve "rush search"
  approve "rush search -h"
  approve "rush search running"
  apk del grep >/dev/null 2>&1
  approve "rush search busybox-error"

describe "edit"
  export EDITOR=cat
  approve "rush edit"
  approve "rush edit -h"
  approve "rush edit hello"
  approve "rush edit hello info"

green "All OK"