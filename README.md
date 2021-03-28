# myspring-boot

#Build Docker image
sudo docker build -t vjkhambe/myspring-boot:1.0.0 .

#Run docker container
sudo docker run -p88:8080 vjkhambe/myspring-boot:1.0.0


#Build and run docker image from Maven and JDK
sudo docker build -f Dockerfile-build-package -t vjkhambe/build-myspring-boot:1.0.0 .
sudo docker run -p88:8080 vjkhambe/build-myspring-boot:1.0.0

#Build and run docker image from already built jar
sudo docker build -f Dockerfile-package-only -t vjkhambe/pkg-myspring-boot:1.0.0 .
sudo docker run -p88:8080 vjkhambe/pkg-myspring-boot:1.0.0

sudo docker image push docker.io/vjkhambe/myspring-boot:1.0.0