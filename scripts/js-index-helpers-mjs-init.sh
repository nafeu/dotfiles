#!/bin/bash

# Go through each subdirectory one level deep
for dir in */; do
  dir=${dir%*/}  # Remove trailing slash

  # Create an empty index.mjs file
  touch "$dir/index.mjs"

  # Create an empty helpers.mjs file
  touch "$dir/helpers.mjs"

  echo "Files created in $dir"
done
