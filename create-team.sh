#!/bin/bash

if [ "$1" = "" ]; then
  echo $0: usage: $0 target
  exit
fi

target=$1
this_directory=$(dirname "$0")

fly -t $target set-team -n docker-images -c ${this_directory}/roles.yml --non-interactive