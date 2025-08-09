FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install --ignore-scripts

COPY . .

RUN npm run generate-protocol
RUN npm run build

EXPOSE 6969

CMD ["node", "dist/index.js"]
