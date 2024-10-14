FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-apt \
    python3-pip \
    libyaml-dev \
    python3-venv \
    python3-virtualenv \
    git

# RUN python3 -m virtualenv venv

# RUN source venv/bin/activate

RUN python3 -m pip install pyyaml

# RUN python3 -m pip install --upgrade pip

# RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
