#!/bin/bash
set -e

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "We are in a pull request, not releasing"
  exit 0
fi

if [[ $TRAVIS_BRANCH != 'master' ]]; then
  echo "Builds from a branch are not released to NPM"
  exit 0
fi

if [[ $TRAVIS_BRANCH == 'master' ]]; then
  rm -rf .git
  git init
  git clean -dfx
  git remote add origin https://github.com/emdaer/emdaer.git
  git fetch origin
  git clone https://github.com/$TRAVIS_REPO_SLUG.git $TRAVIS_REPO_SLUG
  git checkout $TRAVIS_BRANCH

  git config credential.helper store
  echo "https://${RELEASE_GH_USERNAME}:${RELEASE_GH_TOKEN}@github.com/emdaer/emdaer.git" > ~/.git-credentials

  npm config set //registry.npmjs.org/:_authToken=$NPM_TOKEN -q
  npm prune

  git config --global user.email "${RELEASE_GH_EMAIL}"
  git config --global user.name "${RELEASE_GH_USERNAME}"
  git config --global push.default simple

  git fetch --tags
  git branch -u origin/$TRAVIS_BRANCH
  git fsck --full #debug
  echo "npm whoami"
  npm whoami #debug
  echo "git config --list"
  git config --list #debug

  yarn
  lerna publish --conventional-commits --yes --force-publish=*
fi
