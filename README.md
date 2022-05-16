February
---

`Certbot`과 certbot `Route53` 플러그인을 사용해서 AWS Route53에 등록된 도메인의 
SSL 인증서를 발급

# 도커 이미지 생성 및 사용

```shell

docker build -t ${CONTAINER_NAME} .

docker run --rm \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  -v $PWD/data/:/etc/letsencrypt/
  -it ${CONTAINER_NAME} ${DOMAIN}

```

# 간편 실행 및 사용

```shell

docker run --rm \
	-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
	-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
	-v $PWD/data/:/etc/letsencrypt \
	-it docker.pkg.github.com/passionoil/february/february:0.0.1 ${DOMAIN}

```
