FROM node:14.17.6

WORKDIR /app

COPY package*.json ./

RUN yarn install -f
RUN yarn install -f react-scripts@4.0.3 -g --silent


COPY . ./

EXPOSE 3000

CMD ["yarn", "start"]