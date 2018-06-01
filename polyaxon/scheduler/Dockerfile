FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=scheduler

COPY requirements /requirements
WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/scheduler/requirements.txt

WORKDIR /polyaxon/polyaxon

ENTRYPOINT ["celery", "-A", "polyaxon", "worker" , "--loglevel=INFO", "--without-mingle", "--without-gossip", "-n default@%h", "-Q"]
