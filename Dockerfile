FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install pandoc -y
RUN apt-get install fonts-wqy-microhei -y
RUN apt-get install texlive-xetex -y
RUN apt-get clean

COPY mdtopdf.sh /apps/mdtopdf.sh
COPY pandoc-config.yaml /apps/pandoc-config.yaml

WORKDIR /data

CMD ["/apps/mdtopdf.sh"]