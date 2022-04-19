FROM openjdk11
RUN mkdir /app
WORKDIR /app
COPY /target/*.jar interview.jar
ENTRYPOINT ["java","-jar","interview.jar"]