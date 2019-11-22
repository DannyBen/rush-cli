#!/usr/bin/env bash

set -x

rush
rush -h

set -e

rush add sample ~/rush-repos/sample-repo
rush config
rush list

rush get hello sample

rush clone dannyben
rush list

rush remove sample
rush default dannyben
rush pull