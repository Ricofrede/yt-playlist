# Youtube Playlist in NextJS

## Introduction

This project is a simple webapp for the testing the new NextJS 13 "app"'s folder API. It is supposed to list and run embed iframes with Youtube videos from a given Youtube playlist.

## Initial Setup

Simply run the command `make up` to spin it up. Once the containers finish up building the client will be available at `localhost:3000`.

## Dependencies

- ReactJS 18.2.0
- NextJS 13.0.2
- TypeScript 4.8.4
- SASS 1.56.1
- Bootstrap 5.2.2
- MD Bootstrap 5.0.0

## Important Commands

| Command | Description |
| --- | --- |
| make up | Spins up the necessary containers |
| make down | Turn down containers and remove everything created with them |
| make upBuild | Spins up the necessary containers forcing their docker images to rebuild |
| make grant | Grants admin access to all files in case you run into privilege problems |
| make access | Access container |
| make add | Adds Node dependencies to container, must be run like `make deps="vite react" add` |
| make clean | Removes the images from the project to start brand new |
| make install | Install Node packages inside the containers |
| make sync | Runs `yarn install` locally (you must have yarn installed globally) to synchronize the external folder with the node_modules from the containers. Use this when you running into intellisense problems. Consider running `make install` before if this command alone doesn't solve the problem |
| make build | Run `yarn build` inside the containers |

## Important Links (DEV)

- `http://localhost:3000`: WebApp port.
