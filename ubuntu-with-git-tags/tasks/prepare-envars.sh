#!/bin/bash

tag=$(cat git-tag/.git/ref)

tag="${tag//v}"

echo '{ "VERSION": "'"${tag}"'" }' > envars/env.json

cat envars/env.json

echo "${tag}" > tag_file/tag

cat tag_file/tag

