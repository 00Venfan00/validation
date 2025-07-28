#!/bin/bash

# Simula el entorno de producción: Ubuntu 18.04 + Hugo + Make

docker run --rm -it \
  -v $(pwd):/app \
  -w /app/task0_module1 \
  ubuntu:18.04 \
  bash -c "\
    apt-get update && \
    apt-get install -y hugo make && \
    make build"
