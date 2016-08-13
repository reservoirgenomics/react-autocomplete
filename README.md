React Autocomplete
==================

Accessible, extensible, Autocomplete for React.js.

[![Travis build status](http://img.shields.io/travis/reactjs/react-autocomplete.svg?style=flat)](https://travis-ci.org/reactjs/react-autocomplete/)

Docs coming soon, for now just look at the `propTypes` and [examples](https://reactjs.github.io/react-autocomplete/) :)

Trying to settle on the right API, and then focus hard on accessibility,
there are a few missing bits right now.

Stuff we need help with:

- mobile support verification generally
- default mobile styles/positioniong (you'll notice the styles are
  pretty lean, on purpose, apps should style this however they'd like)
- tests (eventually)

# Development
You can start a local development environment with `npm start`. This command starts a static file server on [localhost:8080](http://localhost:8080) which serves the examples in `examples/`. Any code changes are instantaneously reflected in the browser via hot-reload mechanisms.

# Tests!

Run them:
`npm test`

Write them:
`lib/__tests__/Autocomplete-test.js`

Check your work:
`npm run coverage`

# Publishing
`npm run release -- [major|minor|patch|x.x.x]`

# Scripts
Run with `npm run <script>`.

## gh-pages
Builds the examples and assembles a commit which is pushed to `origin/gh-pages`, then cleans up your working directory. Note: This script will `git checkout master` before building.

## release
Takes the same argument as `npm publish`, i.e. `[major|minor|patch|x.x.x]`, then tags a new version, publishes, and pushes the version commit and tag to `origin/master`. Usage: `npm run release -- [major|minor|patch|x.x.x]`

## build
Runs the build scripts detailed below.

## build:component
Transpiles the `Autocomplete` component, creating `build/Autocomplete.js` which is the npm package's `main` file.

## build:examples
Creates bundles for each of the examples, which is used for pushing to `origin/gh-pages`.

## test
Runs the test scripts detailed below.

## test:lint
Runs `eslint` on the source.

## test:jest
Runs the unit tests with `jest`.

## coverage
Runs the unit tests and creates a code coverage report.

## start
Builds all the examples and starts a static file server on [localhost:8080](http://localhost:8080). Any changes made to `lib/Autocomplete.js` or the example code is detected and triggers an incremental build, which is hot-reloaded in the browser. In other words: Make changes to code and see them appear instantaneously in the browser. This script is the perfect companion when making changes to this repo, since you can use the examples as a test-bed for development.
