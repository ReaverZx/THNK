FROM node:18

WORKDIR /app

# Copy everything including source code and scripts
COPY . .

# Install dependencies
RUN npm install

# Build project - this creates the dist folder
RUN npm run build
RUN ls -l /app/dist

EXPOSE 6969

CMD ["node", "dist/index.mjs"]
