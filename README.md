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

![Version](https://img.shields.io/badge/version-0.3.4-blue.svg)
[![Build Status](https://travis-ci.com/DannyBen/rush-cli.svg?branch=master)](https://travis-ci.com/DannyBen/rush-cli)

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


Install
--------------------------------------------------

    $ bash <(curl -s https://raw.githubusercontent.com/DannyBen/rush-cli/master/setup)

Feel free to inspect the [setup script](setup) before running, or simply
install manually by placing the [rush](rush) script in `/usr/local/bin` or
anywhere in your `PATH`.


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
$ rush get hello sample

# Optionally, make this repository the default
$ rush default sample

# And now you can omit the repository name when getting a package
$ rush get hello
```

In case you prefer testing Rush in a clean, isolated docker environment, you
can use [this docker image][docker-sandbox], which has Rush copied to its path:

    $ docker run --rm -it dannyben/rush-sandbox


Usage
--------------------------------------------------

```shell
$ rush
rush - Personal package manager

Usage:
  rush [command] [options]
  rush [command] --help | -h
  rush --version

Commands:
  add       Add a local package repository to the configuration
  clone     Clone a GitHub package repository
  remove    Remove a package repository from the configuration
  config    Show the configuration file
  get       Install a package (default)
  undo      Uninstall a package
  info      Show information about a package
  list      Show packages in one or all repositories
  pull      Perform git pull on one or all repositories
  push      Perform git push on one or all repositories
  default   Set a default repository

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
   - A plain text file called `info` (optional) - this will be shown when
     running `rush info yourpackage`.
   - An executable script named `undo` (optional) - this will be executed 
     when running `rush undo yourpackage`.
4. In the `main` and `undo` scripts, you have the environment variable
   `$REPO` available to you, in case you need it (for example, if you want
   your script to run another script in the same repository).
5. Note that the `main` and `undo` scripts are executed in the same folder it
   lives in, so you can copy files from the package's directory to wherever
   they need to be.
6. The `main` and `undo` scripts can be written in any language, as long as
   they have a shebang line.


[sample]: https://github.com/DannyBen/rush-repo-template
[dannyben-repo]: https://github.com/dannyben/rush-repo
[bashly]: https://github.com/dannyben/bashly
[docker-sandbox]: https://github.com/DannyBen/docker-rush-sandbox
