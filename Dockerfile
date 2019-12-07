FROM openjdk:11.0.5-jdk
COPY spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar app.jar
ENTRYPOINT java -jar app.jar

