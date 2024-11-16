mod-init:
	@ read -p "Module name: " Name; \
	go mod init $${Name}

mod-install:
	go get -u github.com/jackc/pgx/v5
	go get -u github.com/spf13/viper
