#!/bin/bash

yq_tag=$(cat yq-release/tag)

echo '{ "YQ_VERSION": "'"${yq_tag}"'" }' > envars/env.json

echo "${yq_tag}" > tag_file/tag