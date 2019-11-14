#!/bin/bash

cd jq-release

jq_version=$(cat version)
jq_tag=$(cat tag)

echo "JQ Version: ${jq_version}"
echo "JQ Tag: ${jq_tag}"

cd ../yq-release

yq_version=$(cat version)
yq_tag=$(cat tag)

echo "YQ Version: ${yq_version}"
echo "YQ Tag: ${yq_tag}"