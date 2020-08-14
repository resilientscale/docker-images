# docker-images

This repository contains docker images we use regularly, mainly in concourse pipelines.

## Goals

- Build and publish images automatically based on new releases of installed software and the base operating system.
- Version all images according to the predominant software install.
- Keep images small (only install what we need).

## Methodology

This approach starts with a base image, `ubuntu-base`, and builds by adding a single github release onto each image. By defining the base image and the single release, builds trigger automatically and cascade updates appropriately. Images also remain small.

Here is an example:

- `ubuntu-cf` primarily provides the Cloud Foundry CLI
- The base image is `ubuntu-jq` as `jq` is often used in conjunction with the CLI for processing json
- The `ubuntu-jq` base image is `ubuntu-base`
- The `ubuntu-base` base image is the Canonical supported `ubuntu` with `curl` and `zip` added (we use these a lot so they are good candidates for the base image).

This means a change in:

- `cf` will rebuild `ubuntu-cf`
- `jq` will rebuild `ubuntu-jq` and `ubuntu-cf`
- `ubuntu` (the base image from Canonical) will rebuild `ubuntu-base`, `ubuntu-jq`, and `ubuntu-cf`

To make this all work, the pipeline resources are based on github releases. We _do not_ use apt to install things like `jq` as we want concourse to trigger on new github releases.

## Using

If you want to set up (or extend) a similar build system for images, there are two relevant `pipeline.yml` definitions.

- `ubuntu-base/pipeline.yml` builds the base image. 
- `ubuntu-with-github-release/pipeline.yml` builds all the other images. This is the `pipeline.yml` you would use to add a new image with a new github release.

By using the same `ubuntu-with-github-release/pipeline.yml`, you only have to define two inputs:

- `config.yml` contains the configuration for your image
- `Dockerfile` defines your image

Therefore, you can:

- create a directory for your image: `ubuntu-<some-release>`
- define a `config.yml`
- add your `Dockerfile`

You can then create a pipeline for your image with something like: 

```
fly -t $target sp -p ubuntu-<some-release> -c ${this_directory}/ubuntu-with-github-release/pipeline.yml -l ${this_directory}/ubuntu-<some-release>/config.yml 
```

You can also look at `set-pipelines.sh` if you want to take the approach of being able to quickly recreate pipelines.


