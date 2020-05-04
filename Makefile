.PHONY: deps terraform
terraform-provider-gitpod: deps
	cd src \
	&& go build -o ../terraform-provider-gitpod
deps:
	cd src \
	&& go get -d -v -t .../..
terraform: terraform-provider-gitpod
	terraform init \
	&& terraform apply
