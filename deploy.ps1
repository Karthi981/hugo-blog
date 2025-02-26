# Stop on any error
$ErrorActionPreference = "Stop"

Write-Host "Starting Hugo build..."
hugo --minify

$DEPLOY_BRANCH = "gh-pages"

# Store the public folder contents in a temporary location
Write-Host "Preserving public folder contents..."
$tempPath = Join-Path $env:TEMP "hugo-public-temp"
if (Test-Path $tempPath) {
    Remove-Item -Recurse -Force $tempPath
}
Copy-Item -Path "public" -Destination $tempPath -Recurse

# Check if 'gh-pages' exists
if (git branch --list $DEPLOY_BRANCH) {
    Write-Host "Switching to existing $DEPLOY_BRANCH branch..."
    git checkout $DEPLOY_BRANCH
} else {
    Write-Host "Creating new $DEPLOY_BRANCH branch..."
    git checkout --orphan $DEPLOY_BRANCH
    # For a new branch, we need to ensure it's clean
    git rm -rf .
}

# Only clean existing files if we're on gh-pages branch
if ((git rev-parse --abbrev-ref HEAD) -eq $DEPLOY_BRANCH) {
    Write-Host "Cleaning old files..."
    # Remove everything except .git directory
    Get-ChildItem -Force | Where-Object { $_.Name -ne ".git" } | Remove-Item -Recurse -Force
}

# Copy the preserved public folder contents to root
Write-Host "Copying site files from public folder..."
Copy-Item -Path "$tempPath\*" -Destination "." -Recurse
Remove-Item -Recurse -Force $tempPath

# Commit and push
Write-Host "Committing changes..."
git add .
git commit -m "Deploy site: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

Write-Host "Pushing to GitHub..."
git push origin $DEPLOY_BRANCH --force

# Switch back to main branch
Write-Host "Switching back to main branch..."
git checkout main

Write-Host "Deployment completed!"