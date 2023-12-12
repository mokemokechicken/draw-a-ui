FROM --platform=linux/x86_64 node:18-alpine

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

