#!/usr/bin/env bash
#adding docker-credential-login
export PATH=.:$PATH
mvn verify -P$1 -U -X -Ddockerfile.dockerConfigFile=./docker-config.json