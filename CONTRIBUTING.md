# Port Reservation System - Developer Guidelines

## Install

* `npm i`
* add `./bin/` to your PATH to run the commands in `bin`
  without having to provide the path to them


## File setup

* source code is in [src](src)
* transpiled output is in `dist`
* tests are in [spec](spec) and run against `dist`


## Transpilation

* this library is written in LiveScript and needs to be transpiled before testing it
* transpile all code now:

  ```
  build
  ```

* transpile continuously as you make changes:

  ```
  watch
  ```


## Testing

* make sure your source code is transpiled (see above)
* run all tests:

  ```
  bin/spec
  ```

* run a single test:

  ```
  bin/spec <path to test file>[:<line>]
  ```


## Update dependencies

* check for updates:

  ```
  update-check
  ```

* update the dependencies:

  ```
  update
  ```


## Deploy a new version

```
publish <patch|minor|major>
```
