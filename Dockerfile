FROM openjdk:17.0-jdk
# #Required for starting application up.
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/dragonball-spring.jar $PROJECT_HOME/dragonball-spring.jar
WORKDIR $PROJECT_HOME
CMD ["java" ,"-jar","./dragonball-spring.jar"]
