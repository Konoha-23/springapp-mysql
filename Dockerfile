FROM openjdk:17.0-jdk
# #Required for starting application up.
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/dragonball-spring-0.0.1-SNAPSHOT.jar.original $PROJECT_HOME/dragonball-spring-0.0.1-SNAPSHOT.jar.original
WORKDIR $PROJECT_HOME
CMD ["java" ,"-jar","target/dragonball-spring-0.0.1-SNAPSHOT.jar.original"]
