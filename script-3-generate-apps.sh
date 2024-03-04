#!/bin/bash

BRANCH=main

git checkout $BRANCH

cd sandbox

# @nx/angular:app

git checkout -b $BRANCH-app-webpack-csr
../node_modules/.bin/nx g @nx/angular:app --name=app --directory=apps/app --bundler=webpack --ssr=false
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=webpack --ssr=false"
git checkout $BRANCH

git checkout -b $BRANCH-app-webpack-ssr
../node_modules/.bin/nx g @nx/angular:app --name=app --directory=apps/app --bundler=webpack --ssr=true
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=webpack --ssr=true"
git checkout $BRANCH

git checkout -b $BRANCH-app-esbuild-csr
../node_modules/.bin/nx g @nx/angular:app --name=app --directory=apps/app --bundler=esbuild --ssr=false
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=esbuild --ssr=false"
git checkout $BRANCH

git checkout -b $BRANCH-app-esbuild-ssr
../node_modules/.bin/nx g @nx/angular:app --name=app --directory=apps/app --bundler=esbuild --ssr=true
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=esbuild --ssr=true"
git checkout $BRANCH

# @nx/node:app

git checkout -b $BRANCH-api-express-webpack
../node_modules/.bin/nx g @nx/node:app --name=api --directory=apps/api --framework=express --bundler=webpack
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=express --bundler=webpack"
git checkout $BRANCH

git checkout -b $BRANCH-api-express-esbuild
../node_modules/.bin/nx g @nx/node:app --name=api --directory=apps/api --framework=express --bundler=esbuild
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=express --bundler=esbuild"
git checkout $BRANCH

git checkout -b $BRANCH-api-nest-webpack
../node_modules/.bin/nx g @nx/node:app --name=api --directory=apps/api --isNest=true --framework=nest --bundler=webpack
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=nest --bundler=webpack"
git checkout $BRANCH

git checkout -b $BRANCH-api-nest-esbuild
../node_modules/.bin/nx g @nx/node:app --name=api --directory=apps/api --isNest=true --framework=nest --bundler=esbuild
git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=nest --bundler=esbuild"
git checkout $BRANCH

# GENERATE ALL APPS

../node_modules/.bin/nx g @nx/angular:app  --bundler=webpack  --ssr=false          --name=app-webpack-csr      --directory=apps/app-webpack-csr                  && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=webpack --ssr=false"
../node_modules/.bin/nx g @nx/angular:app  --bundler=webpack  --ssr=true           --name=app-webpack-ssr      --directory=apps/app-webpack-ssr                  && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=webpack --ssr=true"
../node_modules/.bin/nx g @nx/angular:app  --bundler=esbuild  --ssr=false          --name=app-esbuild-csr      --directory=apps/app-esbuild-csr                  && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=esbuild --ssr=false"
../node_modules/.bin/nx g @nx/angular:app  --bundler=esbuild  --ssr=true           --name=app-esbuild-ssr      --directory=apps/app-esbuild-ssr                  && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/angular:app --bundler=esbuild --ssr=true"
../node_modules/.bin/nx g @nx/node:app     --bundler=webpack  --framework=express  --name=api-express-webpack  --directory=apps/api-express-webpack              && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=express --bundler=webpack"
../node_modules/.bin/nx g @nx/node:app     --bundler=esbuild  --framework=express  --name=api-express-esbuild  --directory=apps/api-express-esbuild              && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=express --bundler=esbuild"
../node_modules/.bin/nx g @nx/node:app     --bundler=webpack  --framework=nest     --name=api-nest-webpack     --directory=apps/api-nest-webpack  --isNest=true  && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=nest --bundler=webpack"
../node_modules/.bin/nx g @nx/node:app     --bundler=esbuild  --framework=nest     --name=api-nest-esbuild     --directory=apps/api-nest-esbuild  --isNest=true  && git status && git add -A && git commit -m "feat(sandbox): new app - @nx/node:app --framework=nest --bundler=esbuild"
