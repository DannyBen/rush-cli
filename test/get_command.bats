#!/usr/bin/env bats

@test "rush get" {
  run rush get
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "missing required argument: PACKAGE" ]]
}

@test "rush get -h" {
  run rush get -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "rush get ruby centos" ]]
}

@test "rush get PACKAGE REPO" {
  run rush get hello sample
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "What's the rush? (hello from sample)" ]]
}
