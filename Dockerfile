FROM node:18

WORKDIR /app

COPY package.json ./

RUN yarn install

COPY . .

RUN yarn build

ENV PORT=8080
ENV CONTAINER_HOST=mongodb

EXPOSE 8080

CMD ["yarn", "start"]