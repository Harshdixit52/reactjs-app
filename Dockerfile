FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
CMD ["npm","audit","fix"]
COPY . /app
EXPOSE 5173
CMD [ "npm","run","dev" ]
