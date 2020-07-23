FROM baota:1.0.0
LABEL MAINTAINER="sxl_youcun@qq.com" \
      author="steven"
WORKDIR /
ADD www.tar.gz /
EXPOSE 20 21 80 443 888 8888
CMD ["/usr/sbin/init"]
