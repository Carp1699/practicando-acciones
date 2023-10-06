FROM maven:3.8.3-openjdk-17 AS build-jar
WORKDIR /artifacts
CMD mvn clean install
# Copy the JAR file into the container at the specified working directory
COPY ./targetotro/gitactions-0.0.1-SNAPSHOT.jar ./

FROM openjdk:17-alpine AS artifact
COPY --from=build-jar /artifacts .
EXPOSE 8080
# Specify the command to run your application
CMD ["java", "-jar", "gitactions-0.0.1-SNAPSHOT.jar"]