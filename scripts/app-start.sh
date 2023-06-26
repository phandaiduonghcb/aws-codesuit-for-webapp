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

sudo docker run --name web-app-server -d -p 80:80 666243375423.dkr.ecr.us-east-2.amazonaws.com/$REPO_NAME:latest
