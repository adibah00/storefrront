FROM node:16-alpine

WORKDIR /usr/server/app

COPY ./package.json ./

RUN npm install

COPY ./ .

RUN npm run build

ENV NODE_ENV=DEVELOPMENT

EXPOSE 3001

CMD ["npm", "run", "dev"] # will launch the remix app when we run this Docker image.