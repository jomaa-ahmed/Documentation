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