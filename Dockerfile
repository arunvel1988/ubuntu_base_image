FROM scratch
ARG tarfile_name 
ADD $tarfile_name /
#ADD ubuntu-base-18.04.4-base-amd64.tar.gz /

RUN apt-get update -y && apt-get install -y bash && rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin
RUN ls -ltr
#RUN adduser 1001 --disabled-password
CMD ["/bin/bash"]
