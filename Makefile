.PHONY: deps

terraform-provider-gitpod: deps
	go build -o terraform-provider-gitpod

deps:
	go get -d -v -t .../..
