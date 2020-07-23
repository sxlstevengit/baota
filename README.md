宝塔docker的使用说明：

说明： 由于官方并没有给出docker的版本，所以自己做了宝塔的docker版， 给需要的朋友。 制作方法：以centos7为基础镜像，然后在容器中安装服务，最后提交成新的镜像。

本docker镜像是基于centos7制作的，可以直接使用，已经安装了LNMP. 宝塔面板版本：采用最新的稳定版本7.4.2。

其它应用版本如下： Nginx 1.18.0、 MySQL 8.0.20、 PHP-7.1、 Pure-Ftpd 1.0.49、 phpMyAdmin 4.9、 Linux工具箱 1.6、 宝塔SSH终端 1.0

如果觉得好用，就顺手给个星呗。你的支持是我前进的动力。





如何使用：

docker run -itd --name baota --privileged -p 2020:20 -p 2021:21 -p 2080:80 -p 2443:443 -p 2888:888 -p 28888:8888  sxlsteven/baota:1.0.1



或者：

docker-compose -f docker-compose.yml  up -d(需要用到docker-compose.yml文件)




如果你想持久存储，修改数据之后，你需要把容器内/www目录复制到主机上面，然后下次再启动容器时，把该目录挂载到容器的/www目录上，这样数据永不丢失。

从容器中复制数据出来
docker cp 23355cc20131:/www/ /btdata/

docker run -itd --name baota --privileged -p 2020:20 -p 2021:21 -p 2080:80 -p 2443:443 -p 2888:888 -p 28888:8888 -v /btdata/www:/www sxlsteven/baota:1.0.1



登录方式


登陆地址 http://{{面板ip地址}}:28888/admin/

初始账号 rootadmin

初始密码 rootadmin
