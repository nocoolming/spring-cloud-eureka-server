FROM openjdk:11
MAINTAINER Mingming Li  "21374618@qq.com"

WORKDIR /app
COPY target/server-0.0.1.jar /app

ENTRYPOINT ["java", "-jar", "/app/server-0.0.1.jar"]