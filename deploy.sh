#!/bin/bash

# Exit if any command fails
set -e

# Pull the latest changes
git pull origin main

# Update deployment information in README.md or other files as needed
echo "Deployed at $(date)" >> README.md

# Add changes to git
git add README.md

# Commit changes
git commit -m "Update deployment information"

# Push changes to GitHub using the personal access token stored in the environment variable
git push https://$GITHUB_TOKEN@github.com/Alokpatel88/CampVue.git main
