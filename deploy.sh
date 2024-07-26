#!/bin/bash

# Exit if any command fails
set -e

# Pull the latest changes
git pull origin main

# Update deployment information in README.md or other files as needed
# Example: updating a deployment timestamp
echo "Deployed at $(date)" >> README.md

# Add changes to git
git add README.md

# Commit changes
git commit -m "Update deployment information"

# Push changes to GitHub using the personal access token stored in the environment variable
git push https://$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@github.com/Alokpatel88/CampVue.git main
