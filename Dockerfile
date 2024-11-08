FROM node:18-alpine

WORKDIR /code

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8000

CMD ["npm", "run", "start:prod"]
# COPY . .해버리면 RUN npm install 무산되지 않나(로컬에는 node_modules가 없으니까)근데 컨테이너에 생기는 것도 의문이다.
# /code/dist/main을 왜 못찾지? 존재하는데
