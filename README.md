# kubernetes-spinnaker-halyard
Spinnaker halyard on kubernetes

## 1 Minikube

1.1 Install

```
brew cask install minikube
```
Install Hyperkit driver - instructions here:
https://github.com/kubernetes/minikube/blob/master/docs/drivers.md#hyperkit-driver

1.2 Start minikube
```
minikube start --vm-driver=hyperkit --cpus 4 --memory 8192 --insecure-registry --extra-config=apiserver.enable-swagger-ui=true
minikube dashboard
```

1.3 To work with the minikube docker daemon
```
eval $(minikube docker-env)
```

## 2 Setup Kubernetes env

2.1 To do

## 3 Setup Halyard Service

3.1 Deploy Router Service
```
kubectl apply -f ./halyard-service
```

3.2 BONUS Build the docker image
```
docker-compose -f ./docker/build.yml build  
```

## 4 Setup Halyard and deploy Spinnaker in minikube cluster

4.1 To do

## 5 Troubleshooting

5.1 Minikube
Error starting host:  Error starting stopped host: IP address never found in dhcp leases file Temporary Error: Could not find an IP address
```
sudo echo "" > /var/db/dhcpd_leases
```
