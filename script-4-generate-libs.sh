#!/bin/bash

BRANCH=v-18-1-0

git checkout $BRANCH

cd sandbox

# @nx/js:lib

git checkout -b $BRANCH-lib-js-none
../node_modules/.bin/nx g @nx/js:lib --name=hello --directory=libs/hello --bundler=none
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=none"
git checkout $BRANCH

git checkout -b $BRANCH-lib-js-tsc
../node_modules/.bin/nx g @nx/js:lib --name=hello --directory=libs/hello --bundler=tsc
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=tsc"
git checkout $BRANCH

git checkout -b $BRANCH-lib-js-swc
../node_modules/.bin/nx g @nx/js:lib --name=hello --directory=libs/hello --bundler=swc
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=swc"
git checkout $BRANCH

git checkout -b $BRANCH-lib-js-esbuild
../node_modules/.bin/nx g @nx/js:lib --name=hello --directory=libs/hello --bundler=esbuild
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=esbuild"
git checkout $BRANCH

# @nx/node:lib (buildable)

git checkout -b $BRANCH-lib-node-tsc-b
../node_modules/.bin/nx g @nx/node:lib --name=hello --directory=libs/hello --buildable=true --compiler=tsc
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=true --compiler=tsc"
git checkout $BRANCH

git checkout -b $BRANCH-lib-node-swc-b
../node_modules/.bin/nx g @nx/node:lib --name=hello --directory=libs/hello --buildable=true --compiler=swc
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=true --compiler=swc"
git checkout $BRANCH

# @nx/node:lib (non-buildable)

git checkout -b $BRANCH-lib-node-tsc-nb
../node_modules/.bin/nx g @nx/node:lib --name=hello --directory=libs/hello --buildable=false --compiler=tsc
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=false --compiler=tsc"
git checkout $BRANCH

git checkout -b $BRANCH-lib-node-swc-nb
../node_modules/.bin/nx g @nx/node:lib --name=hello --directory=libs/hello --buildable=false --compiler=swc
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=false --compiler=swc"
git checkout $BRANCH

# @nx/angular:lib (buildable):

git checkout -b $BRANCH-lib-ng-b
../node_modules/.bin/nx g @nx/angular:lib --name=hello --directory=libs/hello --buildable=true
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/angular:lib --buildable=true"
git checkout $BRANCH

# @nx/angular:lib (non-buildable):

git checkout -b $BRANCH-lib-ng-nb
../node_modules/.bin/nx g @nx/angular:lib --name=hello --directory=libs/hello --buildable=false
git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/angular:lib --buildable=false"
git checkout $BRANCH

# GENERATE ALL LIBS

../node_modules/.bin/nx g @nx/js:lib                          --bundler=none     --name=lib-js-none       --directory=libs/lib-js-none      && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=none"
../node_modules/.bin/nx g @nx/js:lib                          --bundler=tsc      --name=lib-js-tsc        --directory=libs/lib-js-tsc       && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=tsc"
../node_modules/.bin/nx g @nx/js:lib                          --bundler=swc      --name=lib-js-swc        --directory=libs/lib-js-swc       && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=swc"
../node_modules/.bin/nx g @nx/js:lib                          --bundler=esbuild  --name=lib-js-esbuild    --directory=libs/lib-js-esbuild   && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/js:lib --bundler=esbuild"
../node_modules/.bin/nx g @nx/node:lib     --buildable=true   --compiler=tsc     --name=lib-node-tsc-b    --directory=libs/lib-node-tsc-b   && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=true --compiler=tsc"
../node_modules/.bin/nx g @nx/node:lib     --buildable=true   --compiler=swc     --name=lib-node-swc-b    --directory=libs/lib-node-swc-b   && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=true --compiler=swc"
../node_modules/.bin/nx g @nx/node:lib     --buildable=false  --compiler=tsc     --name=lib-node-tsc-nb   --directory=libs/lib-node-tsc-nb  && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=false --compiler=tsc"
../node_modules/.bin/nx g @nx/node:lib     --buildable=false  --compiler=swc     --name=lib-node-swc-nb   --directory=libs/lib-node-swc-nb  && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/node:lib --buildable=false --compiler=swc"
../node_modules/.bin/nx g @nx/angular:lib  --buildable=true                      --name=lib-ng-b          --directory=libs/lib-ng-b         && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/angular:lib --buildable=true"
../node_modules/.bin/nx g @nx/angular:lib  --buildable=false                     --name=lib-ng-nb         --directory=libs/lib-ng-nb        && git status && git add -A && git commit -m "feat(sandbox): new lib - @nx/angular:lib --buildable=false"
