FROM node:18-alpine

WORKDIR /code

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8000

# コンテナを立ち上げたら実行する命令語
CMD ["npm", "run", "start:prod"]