FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y update && \
    apt-get -y install git && \
    apt-get -y install libldap2-dev libsasl2-dev

COPY requirements.txt /setup/
RUN pip3 install --no-cache-dir -r /setup/requirements.txt

VOLUME /polyaxon
WORKDIR /polyaxon
copy . /polyaxon
