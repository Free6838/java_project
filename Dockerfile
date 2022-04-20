FROM openjdk:11.0-jre
RUN mkdir /app
WORKDIR /app
COPY /target/*.jar interview.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","interview.jar"]
HEALTHCHECK --interval=25s --timeout=3s --retries=2 CMD wget --spider http://localhost:8080/ || exit 1