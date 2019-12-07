FROM openjdk:11.0.5-jdk
COPY *.jar app.jar
ENTRYPOINT java -jar app.jar

