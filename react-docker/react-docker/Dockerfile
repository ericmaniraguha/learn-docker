# ---------- Build Stage ----------
    FROM node:20-alpine AS builder

    # Create a non-root system user for better security
    # -S: creates a system user (without a home directory)
    # -G: creates a group and assigns the user to it
    RUN addgroup app && adduser -S -G app app
    
    # Set working directory inside the container
    WORKDIR /app
    
    # Copy only dependency definition files first to leverage Docker cache
    COPY package*.json ./
    
    # Temporarily switch to root to change permissions
    USER root
    
    # Change ownership of the working directory to the non-root user
    RUN chown -R app:app /app
    
    # Switch back to non-root user
    USER app
    
    # Install project dependencies
    RUN npm install
    
    # Copy the remaining project files (source code, config, etc.)
    COPY . .
    
    # Expose the port used by Vite (default is 5173)
    EXPOSE 5173
    
    # Command to start the React app in development mode
    CMD ["npm", "run", "dev"]
    