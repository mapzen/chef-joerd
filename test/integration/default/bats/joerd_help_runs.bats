#!/usr/bin/env bats

@test "Joerd binary runs help successfully" {
  run joerd --help
  [ "$status" -eq 0 ]
}
