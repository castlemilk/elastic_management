#!/bin/sh
docker network create -d overlay elasticsearch-backend
docker network create -d overlay elasticsearch-frontend
