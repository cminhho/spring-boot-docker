# Build
## Build image

    mvn clean package dockerfile:build

## Push the image
    mvn clean package docker:build -DpushImage

mvn dockerfile:build
mvn dockerfile:push
mvn dockerfile:tag


# Run
## Run with Docker image
docker run -p 8080:8080 hmchung/springboot-docker

## RUN with Docker Compose
docker-compose -f app.yml up