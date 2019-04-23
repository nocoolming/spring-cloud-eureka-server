#!/usr/bin/env bash
./mvnw -B -DskipTests clean package
docker rmi nocoolming/eureka-server: