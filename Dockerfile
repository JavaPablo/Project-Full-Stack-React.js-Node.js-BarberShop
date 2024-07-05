# Use the official lightweight Node.js 14 image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install

# Copy local code to the container
COPY . .

# Build production app
RUN npm run build

# Start Next.js in production mode
CMD ["npm", "start"]
