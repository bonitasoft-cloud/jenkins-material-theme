#!/usr/bin/env bash

set -e

grunt
mkdir -p plugin/src/main/webapp
cp dist/material-bonita-blue.css plugin/src/main/webapp/

cd plugin
mvn clean install "$@"

mkdir -p ../hpi
cp target/*.hpi ../hpi
