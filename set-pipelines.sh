#!/bin/bash

target=docker-images
this_directory=$(dirname "$0")

fly -t $target sp -p alpine-base -c ${this_directory}/alpine/pipeline.yml --non-interactive

fly -t $target sp -p ubuntu-base -c ${this_directory}/ubuntu-base/pipeline.yml --non-interactive

fly -t $target sp -p hugo -c ${this_directory}/docker/pipeline.yml --var image_name=hugo --var docker_file=${this_directory}/docker/hugo --non-interactive

fly -t $target sp -p cf-cli -c ${this_directory}/docker/pipeline.yml --var image_name=cf-cli --var docker_file=${this_directory}/docker/cf-cli --non-interactive

fly -t $target sp -p ubuntu-parsers -c ${this_directory}/ubuntu-parsers/pipeline.yml --non-interactive
