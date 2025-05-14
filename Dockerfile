FROM node:18.16.0

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
CMD [ "npm", "start" ]

# you should not bake sensitive values into the image. Instead, pass them at runtime
# using environment variables or Docker secrets.
# docker build -t sharad-node-app .
# docker run --env-file .env -p 3000:3000 sharad-node-app (providing .env file)
# passing variables at runtime
# docker run -e DB_URL=mongodb://x -e NODE_ENV=production -p 3000:3000 sharad-node-app
