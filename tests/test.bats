#!/usr/bin/env bats

@test "'/usr/local/bin/poudriere' is executable" {
  run [ -x /usr/local/bin/poudriere ]
  [ "$status" -eq 0 ]
}
@test "'/usr/local/poudriere/ports/default/UPDATING' is available" {
  skip
  run ls /usr/local/poudriere/ports/default/UPDATING
  [ "$status" -eq 0 ]
}

@test "/usr/local/poudriere/jails/FreeBSD:10:amd64/bin/freebsd-version return correct version" {
  run /usr/local/poudriere/jails/FreeBSD:10:amd64/bin/freebsd-version
  [ "$status" -eq 0 ]
  [[ "$output" =~ ^10\.* ]]
}
