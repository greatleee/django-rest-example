FROM python:3.6.8
MAINTAINER changdae.lee93@gmail.com 

ENV PYTHONUNBUFFERED 1

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y --no-install-recommends \
        default-libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root
ADD ./requirements.txt /root
RUN pip install -r requirements.txt
