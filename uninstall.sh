#!/bin/bash

set -u
set -e

cf delete app_v1 -f
cf delete app_v2 -f
cf delete canary-service -f
cf delete-service canary-ups -f
