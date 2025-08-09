FROM node:18

WORKDIR /app

# Copy only package files first for caching
COPY package*.json ./

RUN npm install

# Copy all source files after install (make sure .dockerignore excludes node_modules and dist)
COPY . .

RUN npm run build

# Debug: list files
RUN ls -l /app/dist
RUN ls -la ./scripts


EXPOSE 6969

CMD ["node", "dist/index.mjs"]
