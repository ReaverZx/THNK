FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

RUN npm run build

EXPOSE 6969

CMD ["node", "dist/index.js"]
