FROM python:alpine

WORKDIR /app

RUN apk add --no-cache transmission-cli

COPY /src /app

RUN	pip install --no-cache-dir -r /app/requirements.txt --upgrade

ENTRYPOINT ["python", "/app/main.py"]