FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev git \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 --no-cache-dir install --upgrade pip \
  && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/amareshgreat/flask-sample.git
RUN pip3 install flask
CMD [ "python", "/flask-sample/hello.py"]

