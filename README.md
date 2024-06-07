# Part-107.app

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

git checkout gh-pages
git rm -rf .

cp -r ../temp_build/* .
git add .

git commit -m "Publishing web output to gh-pages"
git push -u origin gh-pages --force

rm -rf ../temp_build