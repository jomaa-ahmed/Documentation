FROM node:19.7.0-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
COPY .  /app/
EXPOSE 3000
CMD ["npm","start"]