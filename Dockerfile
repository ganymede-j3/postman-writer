FROM node:18.16.0

RUN npm install -g npm@latest

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json /app/
COPY package*.json ./

#RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Define the command to run the application
#CMD ["node", "main.js"]
CMD ["npm", "start"]