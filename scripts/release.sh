#!/bin/sh -e

if [ -z "$1" ]; then
    echo "No version specified! Usage: npm run release -- [major|minor|patch|x.x.x]"
    exit 1
fi
npm version $1
npm run build:component
npm publish
git push origin master --follow-tags
