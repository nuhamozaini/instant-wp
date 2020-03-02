#!/bin/bash

cd letsencrypt
rm -rf *
cd ..

docker rm -f letsencrypt-nginx
docker image build -t letsencrypt-nginx-image:1.0 .
docker container run -p 80:80 -p 443:443 -v $(pwd)/letsencrypt:/etc/letsencrypt --name letsencrypt-nginx letsencrypt-nginx-image:1.0