# Use a Java runtime as a parent image
FROM maven:3.8.3-openjdk-17 AS build-jar

# Set the working directory in the container
RUN mvn clean install

# Copy the JAR file into the container at the specified working directory
COPY ./target/gitactions-0.0.1-SNAPSHOT.jar ./app.jar

FROM openjdk:17-alpine AS artifact
COPY --from=build-jar ./app.jar .
EXPOSE 8080
# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]