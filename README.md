# rake-dev-utils

## Getting started

Clone this repo and run ```rake init``` in that directory.  This will create a 
```rakefile.rb``` in the parent directory.

## Paths

### lib

All *.rb files in this directory will be loaded when the rakefile is executed.

### local

All files in this directory are ignored.  The directory is for putting 
project-specific local rake files, configurations and functionality that should 
not be pushed up to the Git repository.
