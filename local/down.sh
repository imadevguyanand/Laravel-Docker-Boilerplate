#!/bin/bash 

#Configuration
source local/conf.sh

export APP_NAME=laravel-docker

docker stack rm $APP_NAME

if [[ 0 -ne $(docker secret ls -q -f name=laravel-docker-secrets-env | wc -l) ]]
then
  docker secret rm laravel-docker-secrets-env
fi