#!/bin/bash

BRANCH=v-18-1-0

git checkout $BRANCH

rm -rf ./app-webpack-csr
rm -rf ./app-webpack-ssr
rm -rf ./app-esbuild-csr
rm -rf ./app-esbuild-ssr
rm -rf ./api-express-webpack
rm -rf ./api-express-esbuild
rm -rf ./api-nest-webpack
rm -rf ./api-nest-esbuild
rm -rf ./sandbox

git status && git add -A && git commit -m "chore(repo): cleanup"
