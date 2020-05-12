#!make

build:
	docker build -t 3kube-cli-tools:$(TAG) .

push:
	docker tag 3kube-cli-tools:$(TAG) 3bittechs/3kube-cli-tools:$(TAG)
	docker push 3bittechs/3kube-cli-tools:$(TAG)
