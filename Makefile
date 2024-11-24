# import env
include .env

# initialize go mod
mod:
	@ read -p "Module name: " Name; \
	go mod init $${Name}
	@ rm -rf .git/
	git init

# installing dependencies
mod-install:
	go get -u github.com/jackc/pgx/v5
	go get -u github.com/spf13/viper

# create migration
migrate:
	@ read -p "Migration name: " Name; \
	goose -s create $${Name} sql

# up migration
up:
	goose up

# down migration
down:
	goose down

# migration status
status:
	goose status

# checks migration version
version:
	goose version

# validate migration
validate:
	goose validate

# reset migrations
rollback:
	goose reset

# run the program
run:
	go run main.go
