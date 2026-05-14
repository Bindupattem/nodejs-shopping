# Use official Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first (best caching practice)
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy full source code
COPY . .

# Set environment (important for Docker)
ENV NODE_ENV=production
ENV PORT=3000

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
