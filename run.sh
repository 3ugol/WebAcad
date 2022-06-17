#!/bin/bash

cont=$(docker run --rm -d --name=redis -p 6379:6379 redis)

docker run --rm -it --net=container:"$cont" py-app
