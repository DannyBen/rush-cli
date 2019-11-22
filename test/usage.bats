#!/usr/bin/env bats

@test "rush" {
  run rush
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "Commands:" ]]
}

@test "rush --help" {
  run rush --help
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "Show this help" ]]
}
