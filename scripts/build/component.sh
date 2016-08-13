#!/bin/sh -e

export NODE_ENV=production
mkdir -p build dist
babel lib/Autocomplete.js -o build/Autocomplete.js
browserify lib/Autocomplete.js --external react --external react-dom --standalone ReactAutocomplete --debug | exorcist dist/react-autocomplete.js.map > dist/react-autocomplete.js
uglifyjs dist/react-autocomplete.js -c --in-source-map dist/react-autocomplete.js.map --source-map dist/react-autocomplete.min.js.map > dist/react-autocomplete.min.js
