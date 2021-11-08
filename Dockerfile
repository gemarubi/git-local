FROM openjdk:8-jre-slim-buster
#EXPOSE no se tiene en cuenta en Heroku, el puerto lo pone la aplicacion en la clase principal
EXPOSE 8080
COPY target/samples-test-spring-latest-deploy.jar samples-test-spring-latest-deploy.jar
ENTRYPOINT ["java", "-jar", "samples-test-spring-latest-deploy.jar"]