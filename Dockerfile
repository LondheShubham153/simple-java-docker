# Use an official Java runtime as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY src/Main.java /app/Main.java

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
