# 1. Start with an image that already contains Node.js
FROM node:22

# 2. Create/use /app as the working directory inside the container
WORKDIR /app

# 3. Copy package.json and package-lock.json first
#    These files tell Docker which Node.js dependencies to install
COPY package*.json ./

# 4. Install the dependencies inside the container
RUN npm install

# 5. Copy the rest of our backend application into /app
COPY . .

# 6. Document that our Node.js application listens on port 5050
EXPOSE 5050

# 7. Start our backend application when the container starts
CMD ["node", "--env-file=config.env", "server"]