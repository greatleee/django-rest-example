FROM python:3.7
MAINTAINER changdae.lee93@gmail.com 

ENV PYTHONUNBUFFERED 1

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


WORKDIR /root
ADD ./requirements.txt /root
RUN pip install -r requirements.txt
