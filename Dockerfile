FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .   # <-- make sure you copy everything after install

RUN npm run build

EXPOSE 6969

CMD ["node", "dist/index.mjs"]
