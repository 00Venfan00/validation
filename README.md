# Awesome Inc. Website

## Prerequisites

This website requires the following tools installed:

- [GoHugo v0.80.0](https://gohugo.io/getting-started/installing/)
- GNU Make v3.81+
- Git

## Lifecycle

The development lifecycle is handled using a `Makefile` and includes:

- `make build`: Builds the site into the `dist/` directory
- `make clean`: Cleans the `dist/` directory
- `make post POST_NAME=<slug> POST_TITLE="<title>"`: Creates a new blog post
- `make help`: Lists available commands with their descriptions
