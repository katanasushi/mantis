#!/usr/bin/env bash

HERE=$(dirname $0)

cd $HERE/../../
sbt 'set version := "latest"' docker:publishLocal

docker-compose -f ./docker/mantis/docker-compose.yml up -d
