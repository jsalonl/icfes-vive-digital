# Dockerfile
FROM python:3.7
WORKDIR /usr/src/app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /usr/src/app/requirements.txt # atleast: streamlit

RUN pip install --upgrade pip setuptools wheel \
 && pip install -r requirements.txt \
 && rm -rf /root/.cache/pip

COPY ./ /usr/src/app