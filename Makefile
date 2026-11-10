.DEFAULT_GOAL := help
.PHONY: help up down off shell run test

help:
	@grep -E '^[a-z_-]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  %-8s %s\n", $$1, $$2}'

up:
	docker compose up -d --build

down:
	docker compose down

off:
	docker compose down -v

shell:
	docker compose exec go sh

run:
	docker compose exec go go run ./cmd/server

test:
	docker compose exec go go test ./...
