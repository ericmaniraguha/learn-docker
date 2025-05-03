# Hello Docker with Node.js

This is a simple Node.js project that prints "Hello World!" to the console. It uses a lightweight Node.js image and is packaged using Docker.

## Project Structure

```
hello-docker/
├── Dockerfile     # Defines the image
├── hello.js       # Node.js app that logs "Hello World!"
└── README.md      # Documentation
```

## Prerequisites

- Docker installed on your machine ([Get Docker](https://docs.docker.com/get-docker/))

## How It Works

1. Uses `node:20-alpine` as the base image
2. Sets `/app` as the working directory
3. Copies the local project files into the container
4. Runs the `hello.js` file using Node.js

## Files

**hello.js**
```javascript
console.log('Hello World!');
```

**Dockerfile**
```Dockerfile
FROM node:20-alpine

WORKDIR /app

# Copy current directory contents into the container
COPY . .

# Run the Node.js app
CMD ["node", "hello.js"]
```

## Build and Run

### Step 1: Build the Docker Image
```bash
docker build -t hello-docker .
```

### Step 2: Run the Container
```bash
docker run hello-docker
```

**Expected Output:**
```
Hello World!
```

### Optional: Open Interactive Shell in the Container
```bash
docker run -it hello-docker sh
```

Once inside, you can run the script manually:
```bash
node hello.js
```

## Docker Image Info

Check that your image was created:
```bash
docker images
```

Example output:
```
REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
hello-docker   latest    262b2d897bc5   a few minutes ago 134MB
```

## References

- [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)
- [Node.js Documentation](https://nodejs.org/en/docs/)

---

This project is great for learning the basics of Docker and Node.js integration. You can now expand it to include an HTTP server or more complex logic.
