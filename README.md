# Leanote
Leanote Docker

# 使用方法：
## 初始化数据库
	docker run -it --rm -v ~/leanote:/data leanote  bash /root/init.sh

## 运行
	docker run -d -v ~/leanote:/data -p 9000:9000 leanote


## 方法一：将数据和配置文件保存在镜像内部，启动方式：
      docker run --name leanote -p 9000:9000 -d xiaobailong/Leanote
      数据以及配置文件位于/data/mongodb
## 方法二：将数据以及配置文件挂载到宿主机器，启动方式为：
      docker run --name leanote -p 9000:9000 \
      -v /data/mongodb/conf:/data/mongodb/conf \
      -v /data/mongodb/data:/data/mongodb/data \
      -v /data/leanote/conf:/usr/local/leanote/conf \
      -v /data/leanote/mongodb_backup:/usr/local/leanote/mongodb_backup \
      -d xiaobailong/leanote
