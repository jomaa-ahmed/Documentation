## Kubernetes Deployment and Service - ArgoCD

The following Kubernetes manifest defines a Deployment and a Service for the application using ArgoCD.

### Deployment YAML:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: application
spec:
  replicas: 3
  revisionHistoryLimit: 20
  strategy:
    type : RollingUpdate
    rollingUpdate:
      maxUnavailable: 1
      maxSurge: 1
  selector:
    matchLabels:
      app: application
  template:
    metadata:
      labels:
        app: application
    spec:
      containers:
      - name: application
        image: kirox2023/production:v1
        resources:
          limits:
            memory: "128Mi"
            cpu: "500m"
        ports:
        - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: serviceapplication
spec:
  selector:
    app: application
  ports:
  - port: 8088
    targetPort: 80
```


### Explanation:

    The provided YAML file contains two main sections: a Deployment and a Service.

    The Deployment specifies the desired state for the application. It sets the number of replicas to 3, ensures a maximum of 1 unavailable replica during rolling updates, and defines the container image (kirox2023/production:v1).

    The Service exposes the Deployment to the cluster via a stable IP address and port (8088), directing the traffic to the application's container port (80).

### Purpose:

The purpose of the Kubernetes Deployment is to manage the desired number of replicas for the application. In this case, it ensures that three replicas are running, allowing for scalability and high availability.

The Service, on the other hand, enables access to the application from within the cluster, providing a stable endpoint for other services to communicate with the application.

This Kubernetes manifest can be applied using ArgoCD, a continuous delivery tool that automates application deployments to Kubernetes. With ArgoCD, you can ensure that your application's desired state is always maintained, and changes are rolled out efficiently.
