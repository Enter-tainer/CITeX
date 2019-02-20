#!/bin/fish
mkdir docs
cp * -r ./docs
rm -rf ./docs/docs/
cd docs
git init
git add .
git commit -m "update pdf"
git remote add origin git@github.com:Enter-tainer/CITeX.git # TODO: Change the link
git push --force origin master:pdf
cd ..
rm -rf docs
exit 0
