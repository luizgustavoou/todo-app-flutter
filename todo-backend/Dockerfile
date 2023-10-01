FROM node:latest

WORKDIR /usr/app

COPY package*.json ./

COPY prisma ./prisma/


RUN npm install

COPY . .

# Generate Prisma client
# RUN npx prisma generate

# RUN npx prisma migrate dev --name init
# Push changes to DB
# RUN npx prisma todo push


CMD [ "npm", "run", "start:dev" ]