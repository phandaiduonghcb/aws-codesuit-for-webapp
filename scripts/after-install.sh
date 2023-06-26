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
aws ecr get-login-password | sudo docker login --username AWS --password-stdin 666243375423.dkr.ecr.us-east-2.amazonaws.com
sudo docker pull 666243375423.dkr.ecr.us-east-2.amazonaws.com/$REPO_NAME:latest
