FROM openjdk:11.0-jre
RUN mkdir /app
WORKDIR /app
COPY /target/*.jar interview.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","interview.jar"]