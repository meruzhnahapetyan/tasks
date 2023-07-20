# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app files to the container
COPY . .

# Expose the port that your Node.js app listens on (port 3000 in this case)
EXPOSE 3000

# Command to start your Node.js app
CMD ["node", "app.js"]