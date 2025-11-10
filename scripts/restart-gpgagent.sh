#!/bin/sh

# Kill and start `gpg-agent`
# when it gets stuck in a bad state.

killall gpg-agent

gpg-agent --daemon
