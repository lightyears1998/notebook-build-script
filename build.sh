#!/bin/bash

echo "We are in $PWD."
echo "Installing dependencies..."
pipenv install

echo "Getting latest version of lightyears1998/notebook..."
if [ -d "./notebook" ]
then
    cd notebook && git reset --hard && git pull
else
    git clone https://github.com/lightyears1998/notebook.git notebook --depth=1 && cd notebook
fi
echo "We are in $PWD now."

echo "Customizing..."
pipenv run python "../modify-conf.py"
cp -r ../theme .

echo "Building site..."
pipenv run python -m mkdocs build && rm -rf ../out && cp -r ./site ../out

echo "Done."
