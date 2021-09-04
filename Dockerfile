FROM node:14-alpine as base

WORKDIR /src
COPY package*.json /src/
ENV PORT 3200
EXPOSE 3200

FROM base as dev
ENV NODE_ENV=development
RUN npm install -g nodemon && npm install
COPY . /
CMD [ "npm","start" ]
