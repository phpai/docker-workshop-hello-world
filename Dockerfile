FROM openjdk:16-jdk-alpine

COPY target/*.jar app.jar

LABEL version="1.0"
LABEL author="philip pai" 

RUN apk add curl

ENTRYPOINT ["java", "-jar", "/app.jar"]
