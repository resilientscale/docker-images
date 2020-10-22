#!/bin/bash

target=docker-images
this_directory=$(dirname "$0")

# fly -t $target sp -p alpine-base -c ${this_directory}/alpine/pipeline.yml --non-interactive

# fly -t $target sp -p hugo -c ${this_directory}/docker/pipeline.yml --var image_name=hugo --var docker_file=${this_directory}/docker/hugo --non-interactive

# fly -t $target sp -p cf-cli -c ${this_directory}/docker/pipeline.yml --var image_name=cf-cli --var docker_file=${this_directory}/docker/cf-cli --non-interactive



fly -t $target sp -p ubuntu-base -c ${this_directory}/ubuntu-base/pipeline.yml --non-interactive

fly -t $target sp -p ubuntu-jq -c ${this_directory}/ubuntu-jq/pipeline.yml --non-interactive

fly -t $target sp -p ubuntu-yq -c ${this_directory}/ubuntu-yq/pipeline.yml --non-interactive

fly -t $target sp -p ubuntu-fly -c ${this_directory}/ubuntu-fly/pipeline.yml --non-interactive

fly -t $target sp -p ubuntu-credhub -c ${this_directory}/ubuntu-credhub/pipeline.yml --non-interactive


fly -t $target sp -p ubuntu-linkcheck -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-linkcheck/config.yml --non-interactive

fly -t $target sp -p ubuntu-cf6 -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-cf6/config.yml --non-interactive

fly -t $target sp -p ubuntu-cf -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-cf/config.yml --non-interactive

fly -t $target sp -p ubuntu-go -c ${this_directory}/ubuntu-go/pipeline.yml -l ${this_directory}/ubuntu-go/config.yml --non-interactive

fly -t $target sp -p ubuntu-hugo -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-hugo/config.yml --non-interactive

fly -t $target sp -p ubuntu-hugo-extended -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-hugo-extended/config.yml --non-interactive


fly -t $target sp -p katacoda-staging-trycf -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/katacoda-staging-trycf/config.yml --non-interactive


fly -t $target sp -p ubuntu-gcp-service-broker -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-gcp-service-broker/config.yml --non-interactive

fly -t $target sp -p ubuntu-cloud-service-broker -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-cloud-service-broker/config.yml --non-interactive

fly -t $target sp -p ubuntu-make -c ${this_directory}/ubuntu-make/pipeline.yml -l ${this_directory}/ubuntu-make/config.yml --non-interactive
