FROM node:14

#WORKDIR /app

# Copy only the package.json and package-lock.json first and install dependencies.
COPY package*.json ./
RUN npm install

# Now copy the rest of the application files
COPY . .

CMD ["node", "index.js"] 
