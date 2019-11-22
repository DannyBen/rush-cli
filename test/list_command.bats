#!/usr/bin/env bats

@test "rush list -h" {
  run rush list -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "Show this help" ]]
}

@test "rush list" {
  run rush list
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "Shows how to run another command" ]]
}
