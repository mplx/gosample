# fun with paths - cygwin make, windows go

all: lint test build install ## Test, Build, Install

run: ## Run gosample
	go run main.go

build: ## Build gosample
	go build

install: ## Install gosample
	go install

lint: ## golint
	${GOPATH}/bin/golint github.com/mplx/gosample/...

test: ## Test gosample
	mkdir -p build
	go test github.com/mplx/gosample/numbers -outputdir ${GOPATH}\src\github.com\mplx\gosample\build -coverprofile coverage.out
	go tool cover -html=build\coverage.out -o build\coverage.html

setup: ## Setup dependencies
	# tools
	go get -u github.com/golang/lint/golint
	go get -u github.com/goreleaser/goreleaser
	# packages
	go get -u github.com/spf13/cobra/cobra
	go get -u github.com/stretchr/testify/assert

release: ## Release upload to github (env GITHUB_TOKEN!)
	${GOPATH}/bin/goreleaser --snapshot

# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
