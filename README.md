# Yapi-Docker 镜像

> 镜像使用

```shell
docker run --rm -p 3000:3000 -v $(PWD)/config.json:/app/config.json --name yapi ccr.ccs.tencentyun.com/comeonjy/yapi:v1.9.2
```
访问 [http://127.0.0.1:3000](http://127.0.0.1:3000) 试试

默认账号：admin@admin.com

默认密码：ymfe.org

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