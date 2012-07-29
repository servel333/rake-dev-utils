# Rake developer utilities

Developer utilities for a verity of uses.

## Getting started

Clone this repo and run ```rake init``` in that directory.  This will create a 
```rakefile.rb``` in the parent directory.

Use ```rake -T``` for a list of available features.

## Paths

### lib

All ```*.rb``` files in this directory will be loaded when the rakefile is executed.

### local

All files in this directory are ignored.  The directory is for putting 
project-specific local rake files, configurations and functionality that should 
not be pushed up to the Git repository.
