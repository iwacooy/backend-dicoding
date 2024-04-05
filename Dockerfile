# Use an official Node.js runtime as a base image
FROM node:alpine

# Set the working directory in the container
WORKDIR /usr/note/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . /usr/note/app/

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run your app using CMD which defines your runtime
CMD ["npm", "run", "start:prod"]