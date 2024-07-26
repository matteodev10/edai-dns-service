#Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim as build
ARG JAR_FILE=target/eureka-server-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app

COPY ${JAR_FILE} eureka-server-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","config-server-0.0.1-SNAPSHOT.jar"]