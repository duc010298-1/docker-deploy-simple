FROM python:3.7.4-alpine3.10

RUN apk update && apk add --no-cache postgresql-dev gcc musl-dev gcc alpine-sdk linux-headers
RUN apk add --no-cache jpeg-dev zlib-dev
RUN apk add --no-cache --virtual .build-deps build-base linux-headers

RUN mkdir /code
COPY django /code

WORKDIR /code
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

EXPOSE 8000