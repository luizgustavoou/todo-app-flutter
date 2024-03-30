FROM node:latest

WORKDIR /usr/app

COPY package.json ./
 
# Install dependencies
RUN npm install


# Expose the port that your Nest.js backend
EXPOSE 3000

# Start the backend application
CMD ["npm", "run", "start:dev"]