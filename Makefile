include .env

IMG := yt-playlist_yt-playlist
VOL := yt-playlist_yt-playlist-modules
CWD := /app
USER := $(shell /usr/bin/id -u)
CONT := yt-playlist

up:## Build the app container image (if it doesn't exists) and runs the containers
	docker-compose up

upBuild:## Rebuild the app container image and runs the containers
	docker-compose up --build

down:## Stop and remove the containers that was created by 'make up' command
	docker-compose down

clean:down ## Removes the images from the project to start brand new
	docker image rm  $(IMG)
	docker volume rm $(VOL)

install:## Runs 'yarn install'
	docker exec -it $(CONT) sh -c "(cd $(CWD) && rm yarn.lock && yarn install --force)"

sync:## Syncs the external node_modules with the container for better intellisense
	yarn install

build:## Runs 'yarn build'
	docker exec -it $(CONT) sh -c "(cd $(CWD) && yarn build)"

grant:## Grant permissions to all files (Use it if you have access permissions issues)
	bash -c "sudo chmod -R a+rw . && sudo chown -R $(USER):$(USER) ."

access:## Run an interactive bash session on container
	docker exec -it $(CONT) sh

add: ## Adds selected dependencies to container
	docker exec -it $(CONT) sh -c "(cd $(CWD) && yarn add $(deps))"
