#!/bin/bash

# Set the script to exit immediately if any command fails
set -e

# Step 1: Checkout the "main" branch
git checkout main

# Step 2: Copy all the files from the current directory to the root directory
cp -R ./dist/student/* .

# Step 3: Stage the changes
git add .

# Step 4: Commit the changes
git commit -m "Update student distribution"

# Step 5: Push the changes to the remote "main" branch
git push origin main

# Step 6: Return to the original branch (optional)
git checkout -