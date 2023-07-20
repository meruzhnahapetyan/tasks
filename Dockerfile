# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy all files from the current directory to the container's working directory
COPY . .

# Expose the port on which your Node.js app listens (change this if your app listens on a different port)
EXPOSE 3000

# Command to run your Node.js app (adjust this based on your app's entry point)
CMD ["npm", "start"]
