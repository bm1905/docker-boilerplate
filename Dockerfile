# This is for production setup.

# BUILD PHASE

# Base Image.
FROM node:alpine as builder

# Work Directory.
WORKDIR '/app'

# Copy files and install dependencies.
COPY package.json .
RUN npm install
COPY . .

# Startup command.
RUN npm run build

#RUN PHASE

# Base Image.
FROM nginx

# Port mapping for AWS.
EXPOSE 80

# Copy build folder to run phase.
COPY --from=builder /app/build /usr/share/nginx/html

