#!/bin/bash

set -ex

docker build --rm -t lazyfrosch/icingaweb2-test:5.3 5.3/
docker build --rm -t lazyfrosch/icingaweb2-test:5.4-centos 5.4-centos/
docker build --rm -t lazyfrosch/icingaweb2-test:5.6 5.6/
docker build --rm -t lazyfrosch/icingaweb2-test:7.0 7.0/
docker build --rm -t lazyfrosch/icingaweb2-test 7.0/

# Test:
docker build --rm -t lazyfrosch/icingaweb2-test:7.1 7.1/
