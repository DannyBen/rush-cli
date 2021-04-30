# Developer Notes

## Prerequisites

- [Bashly](https://github.com/DannyBen/bashly)
- [Direnv](https://direnv.net/) (optional but recommended)

## Setup

For easy development, configure the folder where you cloned the `rush-cli`
reposotory to use the included sample repo.

If you are using direnv, create this file:

```
# .envrc
export RUSH_CONFIG=$PWD/rush-dev.ini
```

Otherwise, export the variable manually.

Then, run:

```
$ rush add sample $PWD/sample-repo
$ rush default sample
```

