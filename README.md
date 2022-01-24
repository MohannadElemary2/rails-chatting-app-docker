

# Rails Chat Application Dockerization 🐳

## Introduction

This is the dockerization of the ruby on rails chat application [Here](https://github.com/MohannadElemary2/rails-chatting-app)

## Usage

```bash
$ git clone https://github.com/MohannadElemary2/rails-chatting-app-docker.git
$ cd rails-chatting-app-docker
$ git clone https://github.com/MohannadElemary2/rails-chatting-app.git
$ mv rails-chatting-app backend
$ copy .env.example in backend to .env
$ docker-compose up
$ docker-compose run web rake db:create
$ docker-compose run web rake db:migrate

```

Base URL: http://127.0.0.1:3000

## Container structures

```bash
├── db
├── redis
├── db
├── elasticsearch
├── web
```