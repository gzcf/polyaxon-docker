FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y update && \
    apt-get -y install git

COPY requirements/requirements-base.txt /requirements/
COPY requirements/requirements.txt /requirements/
RUN pip3 install --no-cache-dir -r /requirements/requirements.txt

VOLUME /polyaxon
WORKDIR /polyaxon
copy . /polyaxon
