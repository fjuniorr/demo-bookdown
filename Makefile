.PHONY: help build

#====================================================================
# RECURSIVELY EXPANDED VARIABLES


#====================================================================
# PHONY TARGETS

help: 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

build: ## Gera arquivos html e pdf
	Rscript --verbose -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")' 2> logs/log.Rout

#====================================================================
# TARGETS



#====================================================================
# HELPERS TARGETS

clean: ## Limpeza
	rm -rf public/*