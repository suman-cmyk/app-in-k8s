# Makefile for building and running Docker image
SHELL := /bin/bash

# Default name for the Docker image
DEFAULT_IMAGE_NAME := custom-nginx

.PHONY: build run help

# Target to build the Docker image
build:
	@echo "Building Docker image $(DEFAULT_IMAGE_NAME)..."
    docker build -t $(DEFAULT_IMAGE_NAME) .
	@echo "Done."

# Target to run a container from the Docker image
run: build
	@echo "Running container from Docker image $(IMAGE_NAME)..."
    docker run -d -p 8080:80 $(IMAGE_NAME)
	@echo "Container running successfully."

# Help target to display usage information
help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  build             : Build the Docker image."
	@echo "  run               : Run a container from the Docker image. (IMAGE_NAME=<image-name> to specify a custom image)"
	@echo "  help              : Display this help message."