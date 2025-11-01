#!/bin/bash

set -e

sudo apt-get update -y

sudo apt-get install -y tree

# Check if gcloud is already installed
if command -v gcloud &> /dev/null
then
    echo "Google Cloud SDK already installed. Version: $(gcloud --version | head -n1)"
else
    sudo apt-get install -y apt-transport-https ca-certificates gnupg curl

    sudo rm -f /usr/share/keyrings/cloud.google.gpg

    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list > /dev/null

    sudo apt-get update -y

    sudo apt-get install -y google-cloud-sdk

    echo "Google Cloud SDK installation completed."
fi

tree --version
gcloud --version
