# initialize go mod
mod:
	@ read -p "Module name: " Name; \
	go mod init $${Name}

# installing dependencies
mod-install:
	go get -u github.com/jackc/pgx/v5
	go get -u github.com/spf13/viper
