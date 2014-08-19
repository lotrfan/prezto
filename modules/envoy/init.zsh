#
# Sets envoy environmental variables (for {gpg,ssh}-agent
#
# Authors:
#   Jeffrey Tolar <tolar.jeffrey@gmail.com>
#

if (( $+commands[envoy] )); then
    source <(envoy -p)
fi
