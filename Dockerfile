# ---- Base Node ----
FROM node:14-alpine AS base

#
# ---- Dependencies ----
FROM base AS dependencies
# copy project file
COPY . .
# install node packages
RUN npm set progress=false && npm config set depth 0
RUN npm install --only=production 
# create directory in case of no production modules
RUN mkdir node_modules
# copy production node_modules aside
RUN cp -R node_modules prod_node_modules
# install ALL node_modules, including 'devDependencies'
RUN npm install
# build for production
RUN npm run build
 

# ---- Test ----
# run linters, setup and tests
FROM dependencies AS test
COPY . .
RUN npm run test
 
#
# ---- Release ----
FROM base AS release
# install process manager
RUN npm install pm2 -g
# copy production node_modules
COPY --from=dependencies /prod_node_modules ./node_modules
# copy compiled project JavaScript code
COPY --from=dependencies /prod .
# (optional) add environment variables
# ENV VARIABLE_NAME "variable_value"
# (optional) expose port(s)
# EXPOSE 9009
CMD ["pm2-runtime","app.js"]