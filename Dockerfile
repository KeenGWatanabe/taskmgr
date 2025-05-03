# Use official lightweight Node.js image
FROM node:22-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files FIRST for better caching
COPY package*.json ./

# Install dependencies (including devDependencies if needed)
RUN npm install

# Copy the rest of the app (excluding files in .dockerignore)
COPY . .

# Copy .env file (ensure it's not in .dockerignore)
COPY .env .

# Expose the app's port (adjust if your app uses a different port)
EXPOSE 5000

# Command to run the app (matches your npm start script)
CMD ["nodemon", "start"]