#!/bin/bash
userIP="$(echo $SSH_CONNECTION | awk '{print $1}')"
userIP="${userIP//./ }"
message=""
receptor=""
sender=""
# this should be config for sms service api
curl -XPOST-H "Content-type: application/json"  --output /dev/null --silent
