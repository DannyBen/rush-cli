#!/usr/bin/env bash
source approvals.bash

# before
git config --global user.email "approval@tester.com"
git config --global user.name "Approval Tester"

# usage
approve "rush"
approve "rush --help"

# add
approve "rush add"
approve "rush add -h"
approve "rush add sample ~/rush-repos/sample-repo"
approve "ls ~/rush-repos/sample-repo" "rush_add_ls"

# clone
rm -rf /root/rush-repos/dannyben
approve "rush clone"
approve "rush clone -h"
approve "rush clone dannyben"

# config
approve "rush config"
approve "rush config -h"

# default
approve "rush default"
approve "rush default -h"
approve "rush default sample"

# get
approve "rush add sample ~/rush-repos/sample-repo"
approve "rush get"
approve "rush get -h"
approve "rush get hello"
approve "rush get download"
approve "rush get sample:hello"
approve "rush hello"

# undo
approve "rush undo"
approve "rush undo -h"
approve "rush undo download"
approve "rush undo sample:download"

# info
approve "rush info"
approve "rush info -h"
approve "rush info hello"
approve "rush info sample:hello"
approve "rush info hello --extended"
approve "rush info download -x"

# pull
approve "rush pull"
approve "rush pull -h"

# push
approve "rush push"
approve "rush push -h"

# remove
approve "rush remove"
approve "rush remove -h"
approve "rush remove dannyben"

# list
approve "rush list -h"
approve "rush list"
approve "rush list --simple"
approve "rush list hello"
approve "rush list sample"
approve "rush list nested"
approve "rush list sample:nested"
approve "rush list no-such-package"

# search
approve "rush search"
approve "rush search -h"
approve "rush search running"
apk del grep >/dev/null 2>&1
approve "rush search busybox-error"
