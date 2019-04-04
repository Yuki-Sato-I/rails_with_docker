#!/bin/bash
cd ../ &&
docker-compose build &&
docekr-compose run web rake db:create