FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./

# --only=productionを通じてdevDependenciesはインストールしない
RUN npm install --only=production

COPY . .

RUN npm run build

# コンテナを立ち上げたら実行する命令語
CMD ["node", "dist/main"]

EXPOSE 3000