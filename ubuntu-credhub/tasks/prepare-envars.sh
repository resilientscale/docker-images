#!/bin/bash

tag=$(cat credhub-release/tag)
tag="${tag//v}"

echo '{ "CREDHUB_VERSION": "'"${tag}"'" }' > envars/env.json

echo "${tag}" > tag_file/tag