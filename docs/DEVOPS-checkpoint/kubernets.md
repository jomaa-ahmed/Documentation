# DOcker :
FROM hayd/deno:latest

WORKDIR /app

COPY deps.ts .
RUN deno cache deps.ts

COPY . .

CMD ["run", "--allow-net", "app.ts"]



# kubernets :

apiVersion: apps/v1
kind: Deployment
metadata:
  name: deno-api-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: deno-api
  template:
    metadata:
      labels:
        app: deno-api
    spec:
      containers:
        - name: deno-api
          image: your-deno-image:tag
          ports:
            - containerPort: 8080
