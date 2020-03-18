#!make

build:
	docker build -t 3kube-cli-tools .

push:
	docker tag 3kube-cli-tools:latest 3bittechs/3kube-cli-tools:$(TAG)
	docker push 3bittechs/3kube-cli-tools:$(TAG)