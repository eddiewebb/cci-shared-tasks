# Demo Task for Shared Tasks

This repo demonstrates how a common/non-proprietary orb can be used to allow teams to share private/proprietary tasks in their CircleCI config.


## Structure
- Each task is given a named folder under the `tasks` folder
- Each task has a `run.bash` entrypoint that can install things, run other languages, etc.

