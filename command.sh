#!/bin/bash

# Step 1: Create React App
npx create-react-app my-react-app

# Step 2: Commit the code and create a GitHub repo
gh auth login
git init
git add .
git commit -m "Initial commit"
gh repo create AjayShukla007/frontendproject2forage

# Step 3: Switch to the "update_logo" branch
git checkout -b update_logo

# Step 4: Replace the existing logo
# Assuming you have already downloaded the new logo image
# Replace 'logo.png' with the new image filename
cp https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Step 5: Replaced the existing link in the React component
# it's in src/App.js:
# sed -i 's#old-link#https://www.propelleraero.com/dirtmate/#' src/App.js

# Step 6: Commit the changes
git add .
git commit -m "Initial commit"

# Step 7: Push the code to the remote repository
git push origin update_logo

# Step 8: Create a Pull Request from "update_logo" to "master" branch
gh pr create --base master --head update_logo

# Step 9: Merge the Pull Request (This step should be done by another engineer)
# gh pr merge <PR-URL>

# REPO_URL https://github.com/AjayShukla007/frontendproject2forage