# Wordpress Dockerized
Small script to automate all necessary containers to deploy WordPress with TLS enabled.
It uses Nginx as a reverse proxy to allow additional services to be deployed along side WordPress. TLS certificate is provided by Let's Encrypt.

## OS
Linux Ubuntu 18.04 LTS

## Installation

1. Create a configuration file from `nginx/conf.d/service.conf.example` and name it for example `nginx/conf.d/wp.conf`.
2. In `cert.sh` duplicate the line (or replace it) and replace -d with -d <your_domain> and -m with -m <your_email>.
3. Make sure your domain points to your machine.
4. In the server make sure `docker.io` and `docker-compose` are installed, then run `bash run-first.sh` it will output an indication that everything went well. Something like:
```
 - Congratulations! Your certificate and chain have been saved at:
   /etc/letsencrypt/live/wp.nuha.guru/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/wp.nuha.guru/privkey.pem
   Your cert will expire on 2020-12-15. To obtain a new or tweaked
   version of this certificate in the future, simply run certbot
   again. To non-interactively renew *all* of your certificates, run
   "certbot renew"
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le
```
5. Save the paths shown in the output for `fullchain.pem` and `privkey.pem`. Then go back to the file created in step 1, fill the information for `server_name` with your domain name, `ssl_certificate` and `ssl_certificate_key` with the paths you just got.
6. Last step is to run `docker-compose up -d`.
