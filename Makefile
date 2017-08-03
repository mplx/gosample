run: ## Run gosample
	go run main.go

build: ## Build gosample
	go build

install: ## Install gosample
	go install

test: ## Test gosample
	go test github.com/mplx/gosample/lib

doc: ## Show doc for func (make doc func=One)
	godoc github.com/mplx/gosample/lib ${func}

# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
