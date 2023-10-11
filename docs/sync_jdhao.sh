#!/bin/bash

# git remote add upstream https://github.com/jdhao/nvim-config.git

git fetch upstream && \
git checkout master && \
git merge upstream/master && \
git push origin master
