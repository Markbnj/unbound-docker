REPO ?= markbnj
IMAGE ?= unbound
TAG ?= $(shell git rev-parse --short HEAD)

default: all

.PHONY: image
image:
	docker build --rm --force-rm --tag $(IMAGE):$(TAG) .

.PHONY: tag
tag:
	docker tag $(IMAGE):$(TAG) $(REPO)/$(IMAGE):$(TAG)
	docker tag $(IMAGE):$(TAG) $(REPO)/$(IMAGE):latest

.PHONY: push
push:
	docker push $(IMAGE):$(TAG) $(REPO)/$(IMAGE):$(TAG)
	docker push $(IMAGE):$(TAG) $(REPO)/$(IMAGE):latest

.PHONY: all
all: image tag push
