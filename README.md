# Wordpress Dockerized

## Installation

1. Create a configuration file from `nginx/conf.d/service.conf.example` and name it for example `nginx/conf.d/wp.conf`
2. In `cert.sh` duplicate the line (or replace it) and replace -d with -d <your_domain> and -m with -m <your_email>
3. Make sure your domain points to your machine
4. In the server make sure `docker.io` and `docker-compose` are installed, then run `bash run-first.sh`
5. After the certificate is generated run `docker-compose up`