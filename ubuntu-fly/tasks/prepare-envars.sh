#!/bin/bash

fly_tag=$(cat fly-release/tag)
fly_tag="${fly_tag//v}"

echo '{ "FLY_VERSION": "'"${fly_tag}"'" }' > envars/env.json

cat envars/env.json