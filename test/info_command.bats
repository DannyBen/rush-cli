#!/usr/bin/env bats

@test "rush info" {
  run rush info
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "missing required argument: PACKAGE" ]]
}

@test "rush info -h" {
  run rush info -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "rush info ruby centos" ]]
}

@test "rush info PACKAGE REPO" {
  run rush info hello sample
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "This is a simple example" ]]
}
