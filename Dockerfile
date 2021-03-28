FROM maven:3.6.1-jdk-8-alpine as maven-build
#WORKDIR /docker-app
#ADD . /docker-app
COPY ./ ./
CMD ["mvn", "clean install -DskipTests"]

FROM openjdk:8-jre-alpine3.9
COPY --from=maven-build target/myspring-boot-0.0.1-SNAPSHOT.jar myspring-boot-1.0.0.jar

EXPOSE 8080
CMD ["java","-jar","./myspring-boot-1.0.0.jar"]