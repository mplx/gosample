all: test build install ## Test, Build, Install

run: ## Run gosample
	go run main.go

build: ## Build gosample
	go build

install: ## Install gosample
	go install

test: ## Test gosample
	go test github.com/mplx/gosample/numbers

setup: ## Setup dependencies
	go get -u github.com/spf13/cobra/cobra
	go get -u github.com/stretchr/testify/assert

# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
