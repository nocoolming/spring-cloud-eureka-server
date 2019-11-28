FROM shipilev/openjdk-shenandoah:8
#FROM openjdk:13.0.1-jdk-buster
#FROM nocoolming/redhat-openjdk-18
#FROM openjdk:8
MAINTAINER Mingming Li <21374618@qq.com>

WORKDIR /app
COPY eureka-server-0.0.1.jar /app
COPY application.yml /app

#ENV JAVA_OPTS="-server -XX:+UseG1GC -Xms800m -Xmx5000m -Xss1m -verbose:gc -XX:+PrintGCDetails"
ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseShenandoahGC -Xms200m -Xmx1000m -Xss1m -verbose:gc -XX:+PrintGCDetails"

#RUN echo 'Asia/Shanghai' > /etc/timezone

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseShenandoahGC", "-Deureka-server.timezone=GMT+08", "-Deureka-server.timezone=Asia/Shanghai", "-jar",   "/app/eureka-server-0.0.1.jar"]