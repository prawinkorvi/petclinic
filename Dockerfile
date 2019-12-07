FROM openjdk:11.0.5-jdk
COPY /var/lib/jenkins/workspace/pet/target/*.jar app.jar
ENTRYPOINT java -jar app.jar

