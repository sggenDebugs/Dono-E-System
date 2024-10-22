# Use the Node.js image
FROM node:18

# Set the working directory
WORKDIR /app

# Install pnpm globally
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install

# Copy the rest of the application
COPY . .

# Expose the port for Nuxt.js (default is 3000)
EXPOSE 3000

# Start the development server
CMD ["pnpm", "dev"]
