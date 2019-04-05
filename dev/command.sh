#!/bin/bash

echo "どんなrailsコマンドを使いますか？そのまま入力してください."
cd ../app &&
read cmdStr &&

docker-compose run web $cmdStr