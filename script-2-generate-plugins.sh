#!/bin/bash

NX=18.0.6
BRANCH=main

git checkout $BRANCH

cp nx.template.json sandbox/nx.json
git status && git add -A && git commit -m "feat(sandbox): default nx.json"

cd sandbox

git checkout -b $BRANCH-add-workspace
../node_modules/.bin/nx add @nx/workspace@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/workspace@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-js
../node_modules/.bin/nx add @nx/js@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/js@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-node
../node_modules/.bin/nx add @nx/node@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/node@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-jest
../node_modules/.bin/nx add @nx/jest@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/jest@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-esbuild
../node_modules/.bin/nx add @nx/esbuild@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/esbuild@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-webpack
../node_modules/.bin/nx add @nx/webpack@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/webpack@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-web
../node_modules/.bin/nx add @nx/web@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/web@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-nest
../node_modules/.bin/nx add @nx/nest@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/nest@$NX"
git checkout $BRANCH

git checkout -b $BRANCH-add-angular
../node_modules/.bin/nx add @nx/angular@$NX
git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/angular@$NX"
git checkout $BRANCH

# ADD ALL
../node_modules/.bin/nx add @nx/workspace@$NX  && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/workspace@$NX"
../node_modules/.bin/nx add @nx/js@$NX         && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/js@$NX"
../node_modules/.bin/nx add @nx/node@$NX       && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/node@$NX"
../node_modules/.bin/nx add @nx/jest@$NX       && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/jest@$NX"
../node_modules/.bin/nx add @nx/esbuild@$NX    && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/esbuild@$NX"
../node_modules/.bin/nx add @nx/webpack@$NX    && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/webpack@$NX"
../node_modules/.bin/nx add @nx/web@$NX        && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/web@$NX"
../node_modules/.bin/nx add @nx/nest@$NX       && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/nest@$NX"
../node_modules/.bin/nx add @nx/angular@$NX    && git status && git add -A && git commit -m "feat(sandbox): new plugin - @nx/angular@$NX"
