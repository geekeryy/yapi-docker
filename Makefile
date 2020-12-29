
IMAGE_NAME:=ccr.ccs.tencentyun.com/comeonjy/yapi
IMAGE_TAG:=v1.9.2

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) -f Dockerfile .

run:
	docker run --rm -p 3000:3000 -v $(PWD)/config.json:/app/config.json --name yapi $(IMAGE_NAME):$(IMAGE_TAG)

push:
	docker push $(IMAGE_NAME):$(IMAGE_TAG)
