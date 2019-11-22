#!/usr/bin/env bats

@test "rush clone" {
  run rush clone
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "missing required argument: GITHUB_USER" ]]
}

@test "rush config -h" {
  run rush clone -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "rush clone bobby/bobs-repo" ]]
}

@test "rush clone USER" {
  rm -rf /root/rush-repos/dannyben
  run rush clone dannyben
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "Cloning into" ]]
  [[ "$output" =~ "dannyben = /root/rush-repos/dannyben/rush-repo" ]]
}
