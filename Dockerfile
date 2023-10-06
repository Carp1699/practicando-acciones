# Use a Java runtime as a parent image
FROM openjdk:17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at the specified working directory
COPY ./target/gitactions-0.0.1-SNAPSHOT.jar ./app.jar

EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]