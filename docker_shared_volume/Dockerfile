# docker pull amazonlinux
FROM amazonlinux
VOLUME /myvol
RUN echo "hello world" > /myvol/greeting
RUN yum -y install vim 
WORKDIR /myvol

