# Stage 1: Builder
# Use an Alpine-based Node.js image for a smaller base
ARG BUILD_TIME
FROM node:22-alpine AS builder
LABEL build_time=${BUILD_TIME}
# Install git for cloning the repository
# Using apk add for Alpine Linux instead of apt
RUN apk add --no-cache git

# Set the working directory inside the container
WORKDIR /app

# Clone the Svelte project directly into the /app directory.
# The . at the end means clone into the current directory (/app).
RUN git clone https://github.com/Naurid/SveltePortfolio.git .

# Install project dependencies
# 'npm ci' is preferred over 'npm install' in CI/CD environments for consistent builds
RUN npm ci

# Build the Svelte application for production
RUN npm run build

# Prune development dependencies, keeping only production ones for the next stage
RUN npm prune --production

# Stage 2: Production
# Use a lean Node.js runtime image for the final application
FROM node:22-alpine

# Set the working directory
WORKDIR /app

# Copy only the necessary build artifacts and production node_modules from the builder stage
COPY --from=builder /app/build build/
COPY --from=builder /app/node_modules node_modules/
# Copy package.json for consistent production environment setup, though sometimes not strictly needed for runtime if dependencies are already copied
COPY --from=builder /app/package.json .

# Expose the port your Svelte app listens on (default for many Node.js apps)
EXPOSE 3000

# Set environment variable to production
ENV NODE_ENV=production

# Command to run your Svelte application in production mode
# Assuming 'build' directory contains the server entry point (e.g., index.js or similar for SvelteKit)
CMD [ "node", "build" ]