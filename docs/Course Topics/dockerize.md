## Dockerize the App Stage

The **Dockerize the App** stage is responsible for creating Docker images for the application.

### Dockerfile:

```dockerfile
FROM node:19.7.0-alpine as build

WORKDIR /app

COPY . /app

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

FROM nginx:1.17.8-alpine as production

WORKDIR /usr/share/nginx/html

COPY --from=build /app/build /usr/share/nginx/html
```


### Explanation:

The Dockerfile provided contains the necessary instructions to create Docker images for the application.

    The first stage, named build, is based on the Node.js image (node:19.7.0-alpine). It sets the working directory to /app, copies the application files into the container, installs the dependencies with npm install, and builds the application with npm run build.

    It then exposes port 3000 and sets the command to start the application with npm start.

    The second stage, named production, is based on the Nginx image (nginx:1.17.8-alpine). It sets the working directory to /usr/share/nginx/html and copies the built application from the build stage into the Nginx container.

###  Purpose:

The purpose of this stage is to create Docker images that contain the built and optimized application. The first stage sets up the Node.js environment, builds the application, and generates the necessary artifacts. The second stage creates a lightweight and efficient Nginx-based image to serve the application.

Dockerizing the application enables easy and consistent deployment across various environments. The resulting Docker images can be easily distributed, versioned, and deployed to container orchestration platforms like Kubernetes.