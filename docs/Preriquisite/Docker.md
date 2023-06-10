# Docker conecept

### WHat is Docker : 
docker provides the ability to make an image of our infrastructure and put it in a container 


### Docker file code : 

"""
FROM node:19.7.0-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY .  /app/
EXPOSE 3000
CMD ["npm","start"]
"""