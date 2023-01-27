# Use an official Node.js image as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the project files to the working directory
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
