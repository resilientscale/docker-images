#!/bin/bash

fly_tag=$(cat fly-release/tag)

echo '{ "FLY_VERSION": "'"${fly_tag}"'" }' > envars/env.json