#!/usr/bin/env bats

@test "rush pull" {
  rm -rf /root/rush-repos/dannyben
  run rush clone dannyben
  [[ "$status" -eq 0 ]]

  run rush pull
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "skip" ]]
  [[ "$output" =~ "pull" ]]
  [[ "$output" =~ "up to date" ]]
}

@test "rush pull -h" {
  run rush pull -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "Show this help" ]]
}

