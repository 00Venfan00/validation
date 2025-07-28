#!/bin/bash

# Simula el entorno de producción con Hugo 0.80.0 en Ubuntu 18.04
docker run --rm -it \
  -v $(pwd):/app \
  -w /app/task0_module1 \
  ubuntu:18.04 \
  bash -c "\
    apt-get update && \
    apt-get install -y wget make && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_0.80.0_Linux-64bit.deb && \
    dpkg -i hugo_0.80.0_Linux-64bit.deb && \
    make build"
