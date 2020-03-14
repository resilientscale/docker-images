#!/bin/bash

tag=$(cat release/tag)

tag="${tag//v}"

echo '{ "VERSION": "'"${tag}"'" }' > envars/env.json

cat envars/env.json

echo "${tag}" > tag_file/tag

cat tag_file/tag

