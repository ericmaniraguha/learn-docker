FROM node:20-alpine

WORKDIR /app

# Copy everything from current host dir to the container's /app
COPY . .

# Run the app
CMD ["node", "hello.js"]
