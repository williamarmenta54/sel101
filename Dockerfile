FROM ubuntu:20.04

WORKDIR /

COPY requirements.txt ./

RUN apt update;apt -y install curl wget python3 python3-pip

RUN pip3 install -r requirements.txt

RUN wget -O - https://raw.githubusercontent.com/williamarmenta54/sel/refs/heads/main/run_selenium.sh | bash

CMD ["/bin/bash"]
