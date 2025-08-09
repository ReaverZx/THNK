FROM node:18

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

RUN ls -l /app/dist  # <-- This line is for debugging in your build logs!

EXPOSE 6969

CMD ["node", "dist/index.mjs"]
