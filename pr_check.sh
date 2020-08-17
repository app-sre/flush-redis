#!/bin/bash
set -exv

BASE_IMG="flush-redis"

IMG="${BASE_IMG}:pr-check"

docker build -t "${IMG}" -f Dockerfile .
