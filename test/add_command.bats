#!/usr/bin/env bats

@test "rush add" {
  run rush add
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "missing required argument: REPO" ]]
}

@test "rush add -h" {
  run rush add -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "rush add default" ]]
}

@test "rush add REPO PATH" {
  run rush add sample ~/rush-repos/sample-repo
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "sample:/root/rush-repos/sample-repo" ]]
}

@test "rush add REPO PATH - creates folder" {
  run ls ~/rush-repos/sample-repo
  [[ "$output" =~ "bootstrap" ]]
}
