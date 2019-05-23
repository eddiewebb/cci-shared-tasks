# Shared Tasks for CircleCI

This repo demonstrates how a common/non-proprietary orb can be used to allow teams to share private/proprietary tasks in their CircleCI config.

It is an interim stop-gap until "private orbs" are a thing.


## Structure
- Each task is given a named folder under the `tasks` folder
- Each task has a `run.bash` entrypoint that can install things, run other languages, etc.

# cci-shared-tasks