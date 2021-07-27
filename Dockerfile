FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list

RUN apt update
RUN apt install pandoc -y
RUN apt install fonts-wqy-microhei -y
RUN apt install texlive-xetex -y
RUN apt clean

COPY mdtopdf.sh /apps/mdtopdf.sh
COPY pandoc-config.yaml /apps/pandoc-config.yaml

WORKDIR /data

CMD ["/apps/mdtopdf.sh"]