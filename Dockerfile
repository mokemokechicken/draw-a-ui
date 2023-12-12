FROM node:18-alpine3.14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY *.json *.js *.ts ./

RUN npm install

# Bundle app source
COPY app/ ./app/
COPY components/ ./components/
COPY lib/ ./lib/
COPY public/ ./public/

# Expose port 3000
EXPOSE 3000

# Run the app
CMD [ "npm", "run", "dev"]

