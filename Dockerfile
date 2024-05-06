FROM node:20-bullseye

WORKDIR /app

COPY . .

RUN npm install --force
RUN cd client && npm install --force

EXPOSE 3000

CMD [ "npm","run","dev" ]