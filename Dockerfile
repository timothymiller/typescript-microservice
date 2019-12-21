FROM node:latest-alpine

# Install dependencies
COPY package.json package.json
RUN npm install

# Install process manager
RUN npm install pm2 -g

# Build for production
RUN npm run build

# Add source code
COPY ./prod .

# Add environment variables
# TODO curl from localhost setup server 
# ENV VARIABLE_NAME "variable_value"

# Execute
CMD ["pm2-runtime","app.js"]
