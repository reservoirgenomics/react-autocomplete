#!/bin/sh -e

mkdir -p examples/__build__
watchify examples/static-data/app.js -p [browserify-hmr --port 1339 http://localhost:1339] -v -o examples/__build__/static-data.js
