#!/bin/bash

# Build the site
JEKYLL_ENV=production bundle exec jekyll build

# Navigate to the _site directory
cd _site

# Initialize and push to the chirpy branch
git init
git add .
git commit -m "Deploy site"
git branch -M chirpy
git remote add origin https://github.com/JessieLuo/jessieluo.github.io
git push -f origin chirpy

# Return to the root directory
cd ..