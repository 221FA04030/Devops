# Use Node.js
FROM node:22

# Work inside /app
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install frontend dependencies
RUN npm install

# Copy the frontend code
COPY . .

# Frontend Vite server uses port 5173
EXPOSE 5173

# Start Vite
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]