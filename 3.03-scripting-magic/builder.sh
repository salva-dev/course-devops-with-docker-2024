#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 4 ]; then
    echo "Usage: $0 <GitHub repo> <Docker Hub repo> <<Docker Hub user> <Docker Hub pwd>"
    exit 1
fi

GITHHUB_REPO=$1
DOCKER_HUB_REPO=$2
DOCKER_USER=$3
DOCKER_PWD=$4

# Clone the GitHub repository
# Delete if exists
rm -rf app_repo
git clone "https://github.com/$GITHHUB_REPO" app_repo
cd app_repo

# Log in to Docker Hub
docker login -u $DOCKER_USER -p $DOCKER_PWD

# Build the Docker image
docker build -t "$DOCKER_HUB_REPO" .

# Push the image to Docker Hub
docker push "$DOCKER_HUB_REPO"

# Clean up
cd ..
rm -rf app_repo

echo "Image built and pushed successfully!"
