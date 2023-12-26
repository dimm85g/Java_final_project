FROM openjdk:17
LABEL authors="Dima"
WORKDIR app
COPY target/*.jar app/jirarash.jar
COPY resources ./resources
ENTRYPOINT ["java", "-jar", "app/jirarash.jar", "--spring.profiles.active=prod"]