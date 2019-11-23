Rush - Personal Package Manager
==================================================

[![Build Status](https://travis-ci.com/DannyBen/rush-cli.svg?branch=master)](https://travis-ci.com/DannyBen/rush-cli)

```
_______                       ______  
____  /  ___________  ___________  /_ 
___  /   __  ___/  / / /_  ___/_  __ \
__  /    _  /   / /_/ /_(__  )_  / / /
_  /     /_/    \__,_/ /____/ /_/ /_/ 
/_/      Personal Package Manager
```


Rush is a bash script that executes other bash scripts from compatible GitHub
repositories or local folders.

See [this minimal sample rush repo][sample], or a real life example
repo at [DannyBen/rush-repo][dannyben-repo].

Rush was designed to easily allow bootstrapping of new linux machines with 
your desired configuration and installed packages.

Rush was developed using the [Bashly Command Line Framework][bashly].


Install
--------------------------------------------------

    $ bash <(curl -s https://raw.githubusercontent.com/DannyBen/rush-cli/master/setup)

Feel free to inspect the [setup script](setup) before running, or simply
install manually by placing the [rush](rush) script in `/usr/local/nom` or
anywhere in your `PATH`.


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
  get       Install a package
  info      Show information about a package
  list      Shows packages in a repository or all repositories
  pull      Perform git pull on one or all repositories
  default   Set a default repository

```



Building your own Rush repository
--------------------------------------------------

Create your own repository, either manually or by using
[this Github template][sample]. In any case, it is recommended you name your 
repository **rush-repo**.

To create a repository manyally, follow these steps:

1. Create a new repository on GitHub, named `rush-repo`.
2. Each folder you create in this repository is considered a package.
3. Each package needs to have an executable script named `main`, and
   optionally a plain text file called `info`.
4. In the `main` script, you have the environment variable `$REPO` available
   to you, in case you need it (for example, if you want your script to run 
   another script in the same repository).
5. Note that your `main` script is executed in the same folder it lives in,
   so you can copy files from its directory to wherever they need to be.
6. The `main` script can be written in any language, as long as it has a
   shebang line.


[sample]: https://github.com/DannyBen/rush-repo-template
[dannyben-repo]: https://github.com/dannyben/rush-repo
[bashly]: https://github.com/dannyben/bashly
