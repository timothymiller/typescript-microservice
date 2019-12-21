FROM node:alpine

# Copy source code to Docker environment
COPY . .

# Install dependencies
RUN npm install

# Build for production
RUN npm run build

# Install process manager
RUN npm install pm2 -g

# (OPTIONAL) Add environment variables
# ENV VARIABLE_NAME "variable_value"

# Execute
CMD ["pm2-runtime","prod/app.js"]
