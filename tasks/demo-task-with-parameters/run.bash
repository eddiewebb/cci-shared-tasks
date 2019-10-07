#! /bin/bash

echo "Hello ${CIRCLE_USERNAME}"

echo "and a parameter of: ${1:-$SOME_VAR}"
