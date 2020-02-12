#!/bin/bash

pipenv install
if [ -d "./notebook" ]
then
    cd notebook && git reset --hard && git pull
else
    git clone https://github.com/lightyears1998/notebook.git notebook --depth=1 && cd notebook
fi
pipenv run python -m mkdocs build -d "../out"
