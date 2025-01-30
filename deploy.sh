#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Starting Hugo build..."
hugo --minify  # Generate static files in 'public/'

# Define the deployment branch
DEPLOY_BRANCH="gh-pages"

# Check if the 'gh-pages' branch exists
if git show-ref --verify --quiet "refs/heads/$DEPLOY_BRANCH"; then
  echo "📂 Switching to existing $DEPLOY_BRANCH branch..."
  git checkout $DEPLOY_BRANCH
else
  echo "📂 Creating new $DEPLOY_BRANCH branch..."
  git checkout --orphan $DEPLOY_BRANCH
fi

# Remove all existing files in the branch
echo "🧹 Cleaning old files..."
git rm -rf . || true  # Ignore errors if no files exist

# Move new site files from 'public/' to root
echo "📦 Copying new site files..."
cp -R public/* .  # Copy files from public/
rm -rf public  # Remove the public directory after copying

# Add and commit the changes
echo "📤 Committing changes..."
git add .
git commit -m "🚀 Deploy site: $(date -u +'%Y-%m-%d %H:%M:%S')"

# Push to GitHub
echo "🌍 Pushing to GitHub..."
git push origin $DEPLOY_BRANCH --force

# Switch back to main branch
echo "🔄 Switching back to main branch..."
git checkout main

echo "✅ Deployment completed!"
