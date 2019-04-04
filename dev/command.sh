#!/bin/bash

echo "どんなrailsコマンドを使いますか？そのまま入力してください."
cd ../
read cmdStr &&

docker-compose run web $cmdStr