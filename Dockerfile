FROM python:3.9.2-buster

RUN apt-get update && \
    apt-get install

RUN pip install certbot \
                certbot-dns-route53

ENTRYPOINT ["certbot", "certonly", "--dns-route53", "-d"]
