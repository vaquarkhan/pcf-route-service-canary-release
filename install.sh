#!/bin/bash

set -e
set -u

pushd app_v1 && cf push && popd
pushd app_v2 && cf push && popd

cf push
cf create-user-provided-service canary-ups -r https://canary-service.local2.pcfdev.io
cf bind-route-service local2.pcfdev.io canary-ups --hostname app
