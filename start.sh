#!/bin/bash
apt update -y
apt install docker.io docker-compose git -y

if [ -d "/pizzaria/proway-pizzaria/pizzaria-app" ]; then
    cd /pizzaria/proway-pizzaria/pizzaria-app

    if [ -f "docker-compose.yml" ]; then 
      docker-compose down
    fi
    
    rm -rf /pizzaria
fi

cd / && mkdir pizzaria && cd pizzaria

git clone https://github.com/Rafael-RD/proway-pizzaria.git 

cd proway-pizzaria/pizzaria-app

docker-compose up -d