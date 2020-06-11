# Stage 1 - build application
FROM node:12.14.0-alpine as node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2 - serve static files
FROM nginx:alpine
COPY --from=node /usr/src/app/dist /usr/share/nginx/html
