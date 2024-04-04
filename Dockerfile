FROM openjdk:17.0-jdk
# #Required for starting application up.
RUN mkdir -p /opt/app
ENV PROJECT_HOME=/opt/app
COPY target/*.jar $PROJECT_HOME/
WORKDIR $PROJECT_HOME
EXPOSE 8080
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=
ENV MYSQL_HOST=

CMD ["java" ,"-jar","dragonball-spring-0.0.1-SNAPSHOT.jar"]

#Added port 8080 to expose DragonBall app
