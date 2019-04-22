#!/usr/bin/env bash
echo "We'll be deploy this application to servers"

echo "Build project"
chmod +x ./mvnw
./mvnw clean install

echo "Remove old version of docker image"
docker rmi nocoolming/eureka-server

echo "Build a new latest version docker image."
docker build -t nocoolming/eureka-server .

echo "Login to docker hub"
cat ./password.txt | docker login --username nocoolming --password-stdin

echo "Push to docker hub"
docker push nocoolming/eureka-server

