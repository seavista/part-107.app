# Part-107.app

# firebase functions
firebase deploy --only functions

# flutter_launcher_icons
flutter pub get
flutter pub run flutter_launcher_icons

# GitHub Pages
git checkout -b gh-pages

cp -r build/web/* .
git add .
git commit -m "Publishing web output to gh-pages"
git push -u origin gh-pages

# GitHub Pages
git checkout gh-pages
cp -r build/web/* .
git add .
git commit -m "Publishing web output to gh-pages"
git push -u origin gh-pages --force


# Ensure you are on the main branch:


git checkout main

flutter build web

ls build/web

mkdir -p temp_build
cp -r build/web/* temp_build/

git checkout gh-pages --force

git rm -rf .
    or
git rm -rf --exclude=CNAME .



cp -r temp_build/* .
    or
cp -rf temp_build/* .

git add .

git commit -m "Publishing web output to gh-pages"
git push -u origin gh-pages --force

rm -rf temp_build


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
