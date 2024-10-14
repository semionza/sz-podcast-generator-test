FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-apt \
    python3-pip \
    libyaml-dev \
    python3-venv \
    python3-virtualenv \
    git

RUN python -m pip install --upgrade pip

RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
