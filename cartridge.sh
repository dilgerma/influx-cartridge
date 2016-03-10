#!/bin/sh
set -e

# Build the cartridge definition into an image (without prepare,
# this image becomes a deployment artifact directly).
docker build -t dilgerm/influxdb:0.10 .

# Run the deployment artifact
docker run -p 8083:8083 -p 8086:8086 dilgerm/influxdb:0.10
