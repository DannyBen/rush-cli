#!/usr/bin/env bats

@test "rush config" {
  run rush config
  [[ "$status" -eq 0 ]]
  [[ "$output" =~ "# /root/rush.ini" ]]
  [[ "$output" =~ "sample =" ]]
}

@test "rush config -h" {
  run rush config -h
  [[ "$status" -eq 1 ]]
  [[ "$output" =~ "Show the configuration file" ]]
}
