# Docker conecept

### WHat is Docker : 
docker provides the ability to make an image of our infrastructure and put it in a container 


### Docker file code : 

```Dockerfile
FROM node:19.7.0-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY .  /app/
EXPOSE 3000
CMD ["npm","start"]
```



- First we should add --host 0.0.0.0 to package json


![Packge](<../../static/img/capture1 package.json.png>)

### Steps to run docker :

1. ```  docker build . -t demo:v1 ``` : Build docker

2. ``` docker run --name demo2 -p 9090:3000 demo:v1 ```: Run docker


# build the app for production 

```
FROM node:19.7.0-alpine as build  
WORKDIR /app
COPY package.json /app
RUN npm install
COPY .  /app/
EXPOSE 3000
# CMD ["npm","start"]    # only used for development #  

RUN npm run build        
# ! build the app for production  [for nginx] server web


## Deploy ### 
# Use a stable nginx image
FROM nginx:stable-alpine as deploy
WORKDIR /home/node/app   
COPY --from=build /app/build /usr/share/nginx/html/     
#-> copy from build /app directory

```

``` CMD ["npm","start"] ```  => used For development

``` RUN npm run build  ```   => build the app for production 



## to dockerize an application 

```

FROM node:19.7.0-alpine as build

WORKDIR /app  #set the working directory inside the container

COPY . /app  #copy the application files to the working directory inside the container

RUN npm install  #install the dependencies
RUN npm run build  #build the application

EXPOSE 3000  #expose the port 3000

CMD ["npm", "start"]  #run the application when container starts
```

# Run the following command to build the Docker image: 

docker build -t myapp:latest .

# Once the image is built, you can use it to run containers of your application:

docker run -p 3000:3000 myapp:latest

