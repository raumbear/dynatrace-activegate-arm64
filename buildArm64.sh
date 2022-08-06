#!/bin/bash
source ./seed.env
docker buildx build --platform linux/arm64 -t ${IMAGE_NAME}:${DYNATRACE_AG_VERSION} --push . \
  --build-arg DYNATRACE_ENVIRONMENT_URL=${DYNATRACE_ENVIRONMENT_URL} \
  --build-arg DYNATRACE_PAAS_TOKEN=${DYNATRACE_PAAS_TOKEN} \
  --build-arg DYNATRACE_AG_VERSION=${DYNATRACE_AG_VERSION}
