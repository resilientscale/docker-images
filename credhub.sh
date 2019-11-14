credhub set -t value -n "/concourse/docker-images/github_username" -v ""
credhub set -t value -n "/concourse/docker-images/github_password" -v ""


credhub set -t value -n "/concourse/docker-images/docker_hub_user" -v ""
credhub set -t value -n "/concourse/docker-images/docker_hub_password" -v ""

credhub set -t value -n "/concourse/docker-images/slack_webhook_url" -v ""


# credhub set -t value -n "/concourse/cfcd-prep/aws_artifact_bucket" -v ""
# credhub set -t value -n "/concourse/cfcd-prep/aws_access_key_id" -v ""
# credhub set -t value -n "/concourse/cfcd-prep/aws_secret_access_key" -v ""
# credhub set -t value -n "/concourse/cfcd-prep/aws_region" -v ""