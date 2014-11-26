#!/usr/bin/env bash
set -e

action=""

(( "$#" > 0 )) && { action="$1"; shift; }

[[ -z "$action" ]] && action="now"

executable="play-${action}.sh"

[[ -z $(which "$executable") ]] && { echo -E "play: '$action' is not a action." 1>&2; exit 1; }

exec "$executable" "$@"