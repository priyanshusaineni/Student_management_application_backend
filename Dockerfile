FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

ENV DATABASE_URL="mongodb://13.233.70.184:27017/"

EXPOSE 3000

CMD ["npm", "start"]
