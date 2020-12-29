# Yapi-Docker 镜像

> 构建过程

```shell
mkdir yapi-1.9.2
cd yapi-1.9.2
git clone https://github.com/YMFE/yapi.git
cd ../
vim Dockerfile
vim run.sh
docker build -t $(IMAGE_NAME):$(IMAGE_TAG) -f Dockerfile .
docker run --rm -p 3000:3000 -v $(PWD)/config.json:/app/config.json --name yapi $(IMAGE_NAME):$(IMAGE_TAG)
```