.PHONY: build

ARTIFACTS_DIR=artifacts
WORKDIR=app/

build:
	GOOS=linux GOARCH=amd64 go build -C $(WORKDIR)  -o $(ARTIFACTS_DIR)/bootstrap -ldflags="-s -w" main.go && sam build


build-LambdaGoBoilerplateFunction:
	GOOS=linux GOARCH=amd64 go build -C $(WORKDIR) -o $(ARTIFACTS_DIR)/bootstrap -ldflags="-s -w"

test:
	go test -C $(WORKDIR) -v ./...