FROM java:8
FROM maven:3.5.2
WORKDIR /docker-app
ADD . /docker-app

EXPOSE 8080

CMD ["mvn", "clean install"]
CMD ["mvn", "spring-boot:run"]
