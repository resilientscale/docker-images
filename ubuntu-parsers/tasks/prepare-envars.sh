#!/bin/bash

jq_tag=$(cat jq-release/tag)

yq_tag=$(cat yq-release/tag)

echo '{ "JQ_VERSION": "'"${jq_tag}"'", "YQ_VERSION": "'"${yq_tag}"'" }' > envars/env.json