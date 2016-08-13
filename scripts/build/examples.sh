#!/bin/sh -e

cd examples
mkdir -p __build__
for ex in async-data custom-menu static-data; do
    NODE_ENV=production browserify ${ex}/app.js > __build__/${ex}.js
done
