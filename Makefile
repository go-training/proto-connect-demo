GO ?= go
BUF_VERSION=v1.7.0
GRPCURL_VERSION=v1.8.7
PROTOC_GEN_GO=v1.28
PROTOC_GEN_GO_GRPC=v1.2
PROTOC_GEN_CONNECT_GO=v0.3.0

.PHONY: build
build: generator server client

.PHONY: server
server: gin chi

.PHONY: chi
chi:
	$(GO) build -o bin/$@-server cmd/server/$@/*.go

.PHONY: gin
gin:
	$(GO) build -o bin/$@-server cmd/server/$@/*.go

.PHONY: client
client:
	$(GO) build -o bin/$@ cmd/$@/main.go

.PHONY: install
install:
	$(GO) install github.com/bufbuild/buf/cmd/buf@$(BUF_VERSION)
	$(GO) install github.com/fullstorydev/grpcurl/cmd/grpcurl@$(GRPCURL_VERSION)
	$(GO) install google.golang.org/protobuf/cmd/protoc-gen-go@$(PROTOC_GEN_GO)
	$(GO) install google.golang.org/grpc/cmd/protoc-gen-go-grpc@$(PROTOC_GEN_GO_GRPC)
	$(GO) install github.com/bufbuild/connect-go/cmd/protoc-gen-connect-go@$(PROTOC_GEN_CONNECT_GO)

.PHONY: upgrade
upgrade: ## Upgrade dependencies
	$(GO) get -u -t ./... && go mod tidy -v

.PHONY: generator
generator: buf-lint buf-gen-go buf-gen-python

buf-lint:
	buf lint proto

buf-gen-go:
	buf generate --template buf.gen-go.yaml proto

buf-gen-python:
	buf generate --template buf.gen-python.yaml proto

clean:
	rm -rf gen
