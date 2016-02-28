# Port Reservation System - Developer Guidelines

## Install

* `npm i`
* add `./bin/` to your PATH to run the commands in `bin`
  without having to provide the path to them.
  If you don't do this, you  have to append `bin/` to all commands below.


## File setup

* source code is in [src](src)
* transpiled output is in `dist`
* tests are in [spec](spec) and run against `dist`


## Testing

```
$ spec [path to test file][:<line>]
$ lint
```


## Update dependencies

```
$ update
```


## Deploy a new version

```
$ publish <patch|minor|major>
```
