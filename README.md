<div align='center'>

Rush - Personal Package Manager
==================================================

```
_______                       ______  
____  /  ___________  ___________  /_ 
___  /   __  ___/  / / /_  ___/_  __ \
__  /    _  /   / /_/ /_(__  )_  / / /
_  /     /_/    \__,_/ /____/ /_/ /_/ 
/_/      Personal Package Manager
```

![Version](https://img.shields.io/badge/version-0.5.5-blue.svg)
[![Build Status](https://github.com/DannyBen/rush-cli/workflows/Test/badge.svg)](https://github.com/DannyBen/rush-cli/actions?query=workflow%3ATest)

</div>

---

Rush is a bash script that executes other scripts (bash or other languages)
from compatible GitHub repositories or local folders. It provides a simple
command line interface for downloading, updating and running these scripts.

See [this minimal sample rush repo][sample], or a real life example
repo at [DannyBen/rush-repo][dannyben-repo].

Rush was designed to easily allow bootstrapping of new linux machines with 
your desired configuration and installed packages and to "normalize" the way
you install things.

Rush was developed using the [Bashly Command Line Framework][bashly].


Prerequisites
--------------------------------------------------

- Bash 4.0 or higher (`brew install bash` on mac).
- curl 
- git


Installation
--------------------------------------------------

### Installing using the setup script

This setup script simply downloads the rush executable to `/usr/local/bin/`.
You can either install the latest version, or a specific version
(see available [releases]):

```shell
# Install the latest (master) version
$ bash <(curl -s https://raw.githubusercontent.com/DannyBen/rush-cli/master/setup)

# Or, install a specific version
$ bash <(curl -s https://raw.githubusercontent.com/DannyBen/rush-cli/v0.5.5/setup)
```

Feel free to inspect the [setup script](setup) before running.


### Installing manually

Download the [rush](rush) script to `/usr/local/bin/` or anywhere in your
`PATH`, and make it executable.


Quick Start
--------------------------------------------------

After installing, you can follow these steps to quickly see how it works:

```shell
# Clone a sample package repository
$ rush clone dannyben/rush-repo-template --name sample

# View the config file and verify it was added
$ rush config

# View list of packages
$ rush list

# Install (execute) a sample package
# (All packages in the sample repository only print some messages)
$ rush get sample:hello 

# Optionally, make this repository the default
$ rush default sample

# And now you can omit the repository name when getting a package
$ rush get hello

# Since `get` is the default command, the above command is the same as
$ rush hello
```

In case you prefer testing Rush in a clean, isolated docker environment, you
can use [this docker image][docker-sandbox], which has Rush copied to its path:

    $ docker run --rm -it dannyben/rush
    > rush --help


Usage
--------------------------------------------------

```
$ rush --help

rush - Personal package manager

Usage:
  rush [command]
  rush [command] --help | -h
  rush --version | -v

Repository Commands:
  add       Register a local repository
  remove    Unregister a local repository

Git Commands:
  clone     Clone a GitHub package repository
  pull      Git pull one or all repositories
  push      Git push one or all repositories

Config Commands:
  config    Show or edit the configuration file
  default   Set a default repository

Package Commands:
  get       Install a package (default)
  undo      Uninstall a package
  snatch    Install a package from a remote repo
  info      Show information about a package
  list      Show packages in one or all repositories
  search    Search in package names and info files
  edit      Edit package files

Options:
  --help, -h
    Show this help

  --version, -v
    Show version number

Environment Variables:
  RUSH_CONFIG
    Location of the rush config file
    Default: ~/rush.ini
```


Building your own Rush repository
--------------------------------------------------

Create your own repository, either manually or by using
[this Github template][sample]. In any case, it is recommended you name your 
repository **rush-repo**.

To create a repository manually, follow these steps:

1. Create a new repository on GitHub, named `rush-repo`.
2. Each folder you create in this repository is considered a package.
3. Each package needs to have these files:
   - An executable script named `main` - this will be executed when running
     `rush get yourpackage`.
   - A plain text file called `info` - this will be shown when running
     `rush info yourpackage`.
   - An executable script named `undo` (optional) - this will be executed 
     when running `rush undo yourpackage`.
4. In the `main` and `undo` scripts, you have the environment variables
   `$REPO` and `$REPO_PATH` available to you, in case you need it (for
   example, if you want your script to run another script in the same
   repository).
5. Note that the `main` and `undo` scripts are executed in the same folder it
   lives in, so you can copy files from the package's directory to wherever
   they need to be.
6. If you need to read/write files in the user's current direcotory, use the
   `$USER_CWD` environment variable.
7. The `main` and `undo` scripts can be written in any language, as long as
   they have a shebang line.



Using with GitHub Actions
--------------------------------------------------

Rush can be very useful for running remote shell scripts as part of your
GitHub Actions workflow. This sample configuration shows how to install rush
and connect to your rush repository from a GitHub Actions workflow.

```yaml
# .github/workflows/main.yml
name: Test
on: [push]

jobs:
  main:
    name: Rush demo
    runs-on: ubuntu-latest

    steps:
    - name: Install rush
      run: bash <(curl -s https://raw.githubusercontent.com/DannyBen/rush-cli/master/setup)

    # Replace with your own repository
    - name: Connect to rush repository
      run: rush clone dannyben/rush-repo-template --name default

    - name: Run a sample script from the repo
      run: rush get hello
```

Contributing / Support
--------------------------------------------------

If you experience any issue, have a question or a suggestion, or if you wish
to contribute, feel free to [open an issue][issues].

---

[sample]: https://github.com/DannyBen/rush-repo-template
[dannyben-repo]: https://github.com/dannyben/rush-repo
[bashly]: https://github.com/dannyben/bashly
[docker-sandbox]: https://github.com/DannyBen/docker-rush-sandbox
[issues]: https://github.com/DannyBen/rush-cli/issues
[releases]: https://github.com/DannyBen/rush-cli/releases

