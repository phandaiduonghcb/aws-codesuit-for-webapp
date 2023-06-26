#!/bin/bash
if [ "$DEPLOYMENT_GROUP_NAME" = "dev-web-app-deployment" ];
then
    REPO_NAME="dev-web-app"
elif [ "$DEPLOYMENT_GROUP_NAME" = "prod-web-app-deployment" ];
then
    REPO_NAME="prod-web-app"
elif [ "$DEPLOYMENT_GROUP_NAME" = "staging-web-app-deployment" ];
then
    REPO_NAME="staging-web-app"
fi

IMAGE_NAME=666243375423.dkr.ecr.us-east-2.amazonaws.com/$REPO_NAME
IMAGE_TAG=latest
IMAGE_EXISTS=$(sudo docker images -q $IMAGE_NAME:$IMAGE_TAG)

echo "Image: $IMAGE_NAME:$TAG"

if [ -z "$IMAGE_EXISTS" ]; then
    echo "Docker image does not exist";
else
    echo "Docker image exists"; sudo docker stop web-app-server ;sudo docker container rm web-app-server; sudo docker rmi -f $IMAGE_NAME:$IMAGE_TAG
fi