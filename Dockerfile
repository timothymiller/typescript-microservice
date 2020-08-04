FROM node:14-alpine AS builder
# Copy source code to Docker build environment
COPY . /compile
WORKDIR /compile

# Compile steps
# 1. Install dependencies
RUN yarn
# 2. Build for production
RUN yarn build
# 3. Install process manager
# RUN npm install pm2 -g

FROM node:14-alpine
WORKDIR /prod
# Copy source code to Docker environment
COPY --from=builder /compile/prod .

# Install process manager
RUN npm install pm2 -g

# (OPTIONAL) Add environment variables
# ENV VARIABLE_NAME "variable_value"

# Execute
CMD ["pm2-runtime","prod/app.js"]

