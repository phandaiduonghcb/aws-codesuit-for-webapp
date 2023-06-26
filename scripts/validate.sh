#!/bin/bash

# Wait for the server to start up
sleep 20
# Run the curl command
curl --fail http://localhost:80
