#!/usr/bin/env bats

@test "Joerd binary is found in PATH" {
  run which joerd
  [ "$status" -eq 0 ]
}
