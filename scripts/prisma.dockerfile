FROM node:latest

WORKDIR /usr/app


COPY package.json ./

RUN npm i

COPY . .

CMD ["npm", "run", "prisma:studio"]