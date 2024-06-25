#!/bin/bash

# Exit on any error
set -e

# Build the web app
git checkout main
flutter build web
mkdir -p temp_build
cp -r build/web/* temp_build/

# Deploy to gh-pages
git checkout gh-pages --force
git reset --hard origin/gh-pages
cp -rf temp_build/* .
rm -rf temp_build
git add .
git commit -m "Publishing web output to gh-pages"
git push -u origin gh-pages --force

# Switch back to main branch
git checkout main