#!/usr/bin/env bash

# compile CSS using PostCSS
postcss \
  --use autoprefixer \
  --use cssnano \
  --output ./css/styles.min.css \
  ./css/styles.css
