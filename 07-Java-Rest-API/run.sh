#!/bin/bash

cont=$(docker run --rm -d --name=redis redis)

docker run --rm -d --net=container:"$cont" py-app
