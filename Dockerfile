# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Bundle app source
COPY . .

# Expose port 9100 for metrics
EXPOSE 9100
EXPOSE 3000

# Delay the startup by seconds
CMD ["sh", "-c", "sleep 15 && node app.js"]