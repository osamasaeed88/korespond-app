# Use an official Node.js runtime as a parent image
FROM node:alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies and nodemon
RUN npm install && npm install -g nodemon

# Install express (add this line)
#RUN npm install express

# Copy the rest of the application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the application with nodemon
CMD ["nodemon", "index.js"]
