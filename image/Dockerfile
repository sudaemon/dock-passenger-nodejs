FROM		phusion/baseimage:0.9.18
MAINTAINER	sudaemon <sudaemon@ya.ru>

RUN 	apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"

ADD		. /pd_build
RUN		/pd_build/install.sh
CMD		["/sbin/my_init"]
EXPOSE	80 443
