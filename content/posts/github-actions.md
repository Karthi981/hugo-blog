+++
date = '2025-01-30T12:07:24+05:30'
title = 'Hugo Deployment: Via Github pages and workflows'
author = 'Karthik Raja'
tags = ['Git', 'GitHub', 'GitHib Pages']
categories = ['Tech', 'Tutorial']
email = 'karthikraja@gmail.com'
+++

# Hugo Deployment: Via Github pages and workflows

Hugo is a powerful static site generator that allows you to create fast, customizable websites with ease. In this guide, we’ll walk through installing Hugo, setting up the PaperMod theme, and deploying your site to GitHub Pages.

---

## 1. Deploy to GitHub Pages

### **Step 0: Create a new branch in the repository**

Manually add the gh-pages branch to the repository; otherwise the github actions will throw an error

Allow read and write permissions under Settings > Actions > General > Workflow permissions

### **Step 1: Configure Github Actions to Publish to the Github Pages**

```
echo "# README" >> README.md
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin <path_to_your_git_repo>
git push -u origin main

```
