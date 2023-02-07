.PHONY: build
IMAGE_TAG=$(shell git tag | tail -n 1)
ifeq ($(strip $(IMAGE_TAG)),)
IMAGE_TAG=$(shell git rev-parse --abbrev-ref HEAD)
endif
clean: ## cleanup the content of the directory
	@-make stop

node-start: ## build app
	@sudo docker run --rm --workdir=/app agroland:capstom npm start
help: ## shows commands usage information
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

check: ## test the app
package: build  ## Generates a zip archive and a docker image to deployment
	sudo docker build -t agroland:${IMAGE_TAG} .
	sudo docker save -o agroland_image.tar agroland:${IMAGE_TAG}
	sudo zip agroland-website.zip web_dynamic/app/ agroland_image.tar
validate: ## W3C validator
	-git clone https://github.com/holbertonschool/W3C-Validator.git
	-./W3C-Validator/w3c_validator.py ./dist/index.html
	-rm -rf ./W3C-Validator

test: ## Tests the application
	@-make build
	@make unit-tests
	@make integration-tests

lint: ## make lint on the files
unit-tests: ## make unit tests on the files
	@sudo docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build go test -v -short -coverprofile=coverage-units.out

integration-tests: ## make unit tests on the files
	@sudo docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build go test -v -coverprofile=coverage-integrations.out

build-docker:	## Builds a Docker image from Dockerfile on build directory
	@sudo docker build -t agroland:capstom .

stop: ## Stops the application
	@kill $(shell pgrep awesome-api) 2>&1 &
docker-tests:	## Test the generated docker image using container-structure-test and cst.yml config file
	make build-docker
	container-structure-test test --image awesome:build --config build/cst.yml
	container-structure-test test --image awesome:${IMAGE_TAG} --config cst.yml