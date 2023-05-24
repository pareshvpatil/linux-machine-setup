#!/usr/bin/env bash

curl -H 'Authorization: Bearer <slack-token-goes-here>' https://slack.com/api/users.setPresence?presence=away&pretty=1

echo 'put slack away complete'

