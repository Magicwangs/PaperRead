gitbook build
git checkout master
git add .
git commit -m $1
git push -u both master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m $1
git push -u origin gh-pages
git checkout coding-pages
cp -r _book/* .
git add .
git commit -m $1
git push -u coding coding-pages
git checkout master
