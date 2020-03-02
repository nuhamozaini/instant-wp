FROM debian

RUN apt update && apt upgrade -y
RUN apt install certbot python-certbot-nginx -y

WORKDIR /
COPY cert.sh ./

EXPOSE 80
EXPOSE 443

CMD ["bash", "/cert.sh"]