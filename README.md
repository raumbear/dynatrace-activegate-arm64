# Dynatrace Activegate for Arm64

This repository is primarly used by myself to create an Activegate container for my homelab.
Feel free to use these resources but don't expect continued maintenance.

## How to build

Create a `seed.env` file with the following content

```
export DYNATRACE_ENVIRONMENT_URL='https://<your-environment-url>'
export DYNATRACE_PAAS_TOKEN='<your PAAS token>'
export DYNATRACE_AG_VERSION='<the Activegate version to build the container for>'
export IMAGE_NAME='<your-registry>/dynatrace-activegate'
```

Execute `buildArm64.sh`.
This triggers a Docker `buildx` build with `linux/arm64` as the target platform.

### How to find the Dynatrace Activegate version

Refer to https://www.dynatrace.com/support/help/dynatrace-api/environment-api/deployment/activegate/get-activegate-versions/

