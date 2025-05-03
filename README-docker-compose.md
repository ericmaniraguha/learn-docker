# Docker Compose Setup for Vite React TypeScript Project

This README provides step-by-step instructions for setting up and running a Vite React TypeScript project using Docker Compose.

![Running Application Screenshot](./Screenshot%20from%202025-05-03%2021-18-05.png)

## Project Setup

### 1. Create a Vite Project

First, create a new Vite project using the following command:

```bash
npm create vite@latest vite-project
```

When prompted:
- Select **React** as the framework
- Select **TypeScript** as the variant

After the project is scaffolded, navigate to the project directory:

```bash
cd vite-project
npm install
```

### 2. Dockerize the Project

Initialize Docker in your project:

```bash
docker init
```

During the initialization:
- Select the type of framework you are using (Node.js)
- Choose either npm or npm run dev as your development command

This will generate three files:
- `docker-compose.yml`
- `.dockerignore`
- `Dockerfile`

### 3. Configure Docker Compose

Modify the `docker-compose.yml` file to adapt it for your Vite application:

```yaml
services:
  web:
    build:
      context: .
    ports:
      - 5173:5173
    volumes:
      - .:/app
      - /app/node_modules
```

Key changes made:
- Changed service name from `server` to `web` (as it's a web application)
- Removed unnecessary environment variables
- Added volumes to map the current directory to `/app` in the container
- Added a volume for node_modules to avoid overwriting them with local files

### 4. Update package.json

Modify your package.json to make Vite accessible from outside the container by adding the `--host` flag:

```json
"scripts": {
  "dev": "vite --host",
  "build": "tsc -b && vite build",
  "lint": "eslint .",
  "preview": "vite preview"
}
```

### 5. Run the Application

Start the Docker container:

```bash
docker compose up
```

#### Permissions Issues

If you encounter permission issues:

- **Linux/Mac**: Use `sudo` before the command
  ```bash
  sudo docker compose up
  ```
  You'll need to enter your system password
  
- **Windows**: Run the terminal as administrator

## Running Application

Once the container is running successfully, you'll see output similar to this:

![Terminal Output with Links](./Screenshot%20from%202025-05-03%2021-20-37.png)

![Terminal Output with Links](./Screenshot%20from%202025-05-03%2022-18-42.png)

You can access your application at:
- http://localhost:5173
- Your network IP address (shown in the terminal output)

## Application in Browser

Here's how the application should look in your browser:

![Application in Browser](./Screenshot%20from%202025-05-03%2022-19-36.png)

## Troubleshooting

- If port 5173 is already in use, modify the port mapping in your `docker-compose.yml` file
- Make sure Docker daemon is running on your system
- Check Docker logs for any error messages

## Useful Commands

```bash
# Start containers in detached mode
docker compose up -d

# Stop containers
docker compose down

# View logs
docker compose logs

# Rebuild containers after changes to Dockerfile
docker compose up --build
```

## Project Structure

```
vite-project/
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── package.json
├── public/
├── src/
│   ├── App.tsx
│   ├── main.tsx
│   └── ...
└── ...
```