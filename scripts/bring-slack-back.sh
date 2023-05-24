#!/usr/bin/env bash

curl -H 'Authorization: Bearer <slack-token-goes-here>' https://slack.com/api/users.setPresence?presence=auto&pretty=1

echo 'bring slack back complete'

