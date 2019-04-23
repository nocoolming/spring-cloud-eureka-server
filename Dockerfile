FROM openjdk:8
MAINTAINER Mingming Li  "21374618@qq.com"

ENV LANG en_US.UTF-8
ENV TZ=Asia/Shanghai


WORKDIR /app
COPY target/server-0.0.1.jar /app

ENTRYPOINT ["java", "-jar", "/app/server-0.0.1.jar"]