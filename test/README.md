Tests
==================================================

Testing is done in a sterile Docker environment.

The testing is "approval style", which means we simply run commands and
compare the output with an already known output.
In case the output is different or new, the user is prompted to approve.
testing on CI will be non-interactive.

To run tests locally:

    # For development, with volume mounts
    $ docker-compose run test

    # or, for CI, without volume mounts
    $ docker-compose run ci
