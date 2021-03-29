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



kubectl delete -n default deployment myspring-boot-minikube

kubectl create deployment myspring-boot-minikube --image=docker.io/vjkhambe/myspring-boot:1.0.0

kubectl expose deployment myspring-boot-minikube --type=NodePort --port=8080

kubectl get services myspring-boot-minikube

minikube service myspring-boot-minikube

kubectl port-forward service/myspring-boot-minikube 7080:8080


## load balanced deployment of myspring-boot app


kubectl create deployment balanced-myspring-boot-minikube --image=docker.io/vjkhambe/myspring-boot:1.0.0

kubectl expose deployment balanced-myspring-boot-minikube --type=LoadBalancer --port=8080

kubectl get services balanced-myspring-boot-minikube

minikube service balanced-myspring-boot-minikube

kubectl port-forward service/balanced-myspring-boot-minikube 7081:8080

