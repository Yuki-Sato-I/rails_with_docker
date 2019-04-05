#!/bin/bash
cd ../ &&
docker-compose build &&
docker-compose run web rake db:create