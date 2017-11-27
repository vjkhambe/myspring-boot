FROM java:8
FROM maven:3.5.2
WORKDIR /docker-app
ADD . /docker-app
CMD ["mvn", "clean install"]
