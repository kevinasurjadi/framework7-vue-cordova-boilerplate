setup: create-env build-project install-dependency

create-env:
	sudo cp .env.example .env

build-project:
	sudo docker-compose build

install-dependency:
	sudo docker-compose run app npm install
	sudo docker-compose run app npm rebuild node-sass

run-dev:
	sudo docker-compose run --service-ports app npm run dev

console:
	sudo docker-compose run app sh

