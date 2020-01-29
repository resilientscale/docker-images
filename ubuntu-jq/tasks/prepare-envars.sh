#!/bin/bash

jq_tag=$(cat jq-release/tag)

echo '{ "JQ_VERSION": "'"${jq_tag}"'" }' > envars/env.json

tag="${jq_tag//jq-}"

echo "${tag}" > tag_file/tag

echo "envars" cat envars/env.json

echo "tag_file/tag: ${tag}" 