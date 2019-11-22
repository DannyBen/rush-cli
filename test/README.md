Tests
==================================================

Testing is done in a sterile Docker environment and uses [bats][bats].

To run tests locally:

    $ docker-compose run test
    # or, without volume mounts
    $ docker-compose run ci


[bats]: https://github.com/sstephenson/bats