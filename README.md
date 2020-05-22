## NOTE: To make sure not to have duplicate dependencies, delete node_modules folder (if exists) from the project first.
<br />

## Run the dockerfile.
### `docker-compose up`
### 'docker-compose up --build'

## Some helpful commands:

## Build Dockerfile for custom filename:
### `docker build -f Dockerfile.dev .`
<br />

## Run the dockerfile. Copy the image id and:
### `docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app <image id>`
<br />

## Debugging purpose.
### `docker exec -it <image id> sh`
<br />

## Check running containers.
### `docker ps`
<br />

## Kill or Stop running containers.
### `docker kill <image_id>`
### `docker stop <image_id>`
<br />

## Run the test.
### `docker exec -it <image-id> npm run test`
<br />
