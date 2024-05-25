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