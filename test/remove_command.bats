#!/usr/bin/env bats

@test "rush remove" {
  run rush remove
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "missing required argument: REPO" ]]
}

@test "rush remove -h" {
  run rush remove -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "Show this help" ]]
}

@test "rush remove REPO" {
  run rush add removeme /removeme
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "removeme = /removeme" ]]
  
  run rush remove removeme
  [[ "$status" -eq 0 ]]
  [[ ! "$output" =~ "removeme" ]]
}
