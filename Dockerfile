FROM node:16-alpine

WORKDIR /app

COPY package.json ./

RUN yarn install

EXPOSE 3000

COPY . .

CMD ["yarn", "dev"]