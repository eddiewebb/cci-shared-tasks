# Shared Tasks for CircleCI

This repo demonstrates how a common/non-proprietary orb can be used to allow teams to share private/proprietary tasks in their CircleCI config.

It is an interim stop-gap until "private orbs" are a thing.


## Repo Structure
- Each task is given a named folder under the `tasks` folder
- Each task has a `run.bash` entrypoint that can install things, run other languages, etc.

## Project Setup
- This repo  needs a ["Deploy key"](https://developer.github.com/v3/guides/managing-deploy-keys/#deploy-keys) that grants read access
- Add the private half of that key pair to [CircleCI project's SSH Settings](https://circleci.com/docs/2.0/add-ssh-key/).