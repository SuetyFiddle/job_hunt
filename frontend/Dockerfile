# --- Build stage ---
    FROM node:22 AS build
    WORKDIR /app
    
    # Copy package files and install deps
    COPY package*.json ./
    RUN npm install
    
    # Copy rest of frontend source
    COPY . .
    
    # Build the app (static files go to /app/dist)
    RUN npm run build
    
    # --- Serve stage ---
    FROM nginx:alpine
    COPY --from=build /app/dist /usr/share/nginx/html
    
    # Expose default Nginx port
    EXPOSE 80
    
    CMD ["nginx", "-g", "daemon off;"]
    