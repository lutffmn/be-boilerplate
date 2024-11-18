# initialize go mod
mod:
	@ read -p "Module name: " Name; \
	go mod init $${Name}

# installing dependencies
mod-install:
	go get -u github.com/jackc/pgx
	go get -u github.com/spf13/viper
