FROM node:18-alpine

WORKDIR /code

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8000

# distフォルダーを実行する
CMD ["npm", "run", "start:prod"]

# nest.js도 컨테이너 포트공개 해야되나?
