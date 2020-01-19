NAME := bastion
TAG := latest
IMAGE_NAME := oscar86hsu/$(NAME)

.PHONY: clean


all: ## Pushes the docker image to hub.docker.com
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(IMAGE_NAME):$(TAG) --push .
	docker image prune -f

clean: ## Remove built images
	docker rmi $(IMAGE_NAME) || true