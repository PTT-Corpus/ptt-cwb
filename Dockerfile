FROM debian:latest
RUN apt-get update && apt-get install -y wget
RUN wget -O cwb.tar.gz "https://downloads.sourceforge.net/project/cwb/cwb/cwb-3.0.0/cwb-3.0.0-linux-x86_64.tar.gz?r=http%3A%2F%2Fcwb.sourceforge.net%2Fdownload.php&ts=1505967080&use_mirror=ncu"
RUN tar xzvf cwb.tar.gz && rm cwb.tar.gz && cd cwb-3.0.0-linux-x86_64 && ./install-cwb.sh && cd .. && rm -r cwb-3.0.0-linux-x86_64
