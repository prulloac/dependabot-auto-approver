#!/bin/bash

pip install pre-commit
npm install -g @devcontainers/cli
git config --global init.defaultBranch $GIT_DEFAULT_BRANCH
git config --global --add --bool push.autoSetupRemote true
git config --global --add safe.directory $(pwd)
pre-commit install
cat .devcontainer/.zshrc >> $HOME/.zshrc
sudo chsh -s /bin/zsh
