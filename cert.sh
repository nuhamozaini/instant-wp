#!/bin/sh

# Each website should have a line
certbot certonly --standalone -n --agree-tos -m <email> -d <domain name>