#!/usr/bin/env bash

docker run --rm \                                                                                                                                        13:39:18
           -p 8888:8787 \
           -d \
           --name rstudio_server \
           -v ${PWD}/packages:/packages \
           -v ${PWD}/notebooks:/home/rstudio/notebooks \
           -e PASSWORD=password \
           -e USERID=$(id -u) \
           -e GROUPID=$(id -g) \
           rstudio
