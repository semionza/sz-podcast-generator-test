FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-apt \
    python3-pip \
    libyaml-dev \
    python3-venv \
    python3-virtualenv \
    git

RUN pip install pyyaml --global-option=--with-libyaml

# RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
