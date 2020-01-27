#!/bin/bash

jq_tag=$(cat jq-release/tag)

echo '{ "JQ_VERSION": "'"${jq_tag}"'" }' > envars/env.json