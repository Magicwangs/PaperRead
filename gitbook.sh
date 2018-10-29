gitbook build
git checkout master
git add .
git commit -m $1
git push -u both master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m $1
git push -u both gh-pages
git checkout master
