FROM node:alpine3.19

WORKDIR /app

COPY client/package*.json ./

RUN npm install --ignore-platform

COPY client/ .

EXPOSE 5173

CMD [ "npm" , "run" , "dev" ]