#!/bin/bash

# Declare constants
# IMAGE_NAME=jquarez
# IMAGE_TAG=latest
# HOST=10.202.67.207
# PORT=5000

# # Build Docker image 
# docker image build -t "$IMAGE_NAME:$IMAGE_TAG" --network=host .

# # Push Docker image
# docker image tag "$IMAGE_NAME:$IMAGE_TAG" "$HOST:$PORT/$IMAGE_NAME:$IMAGE_TAG"
# docker image push "$HOST:$PORT/$IMAGE_NAME:$IMAGE_TAG"
# echo "$IMAGE_NAME:$IMAGE_TAG"
docker_tag=aicregistry:5000/${USER}:audio-transcription
# build the image calling on your Dockerfile
#docker build . -f tb_image \
docker build . -f Dockerfile \
 --network=host \
 --tag ${docker_tag} \
 --build-arg USER_ID=$(id -u) \
 --build-arg GROUP_ID=$(id -g) \
 --build-arg USER=${USER}

docker push ${docker_tag}
