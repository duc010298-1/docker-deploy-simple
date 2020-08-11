### STAGE 1 ###
FROM node:10.10-alpine AS build

RUN mkdir /code
COPY . /code
WORKDIR /code

RUN npm install && npm run build_prod

### STAGE 2 ###
FROM nginx:alpine

COPY --from=build /code/dist/angular-app /usr/share/nginx/html

EXPOSE 80