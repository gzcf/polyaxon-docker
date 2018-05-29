FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN pip3 install --no-cache-dir -r /requirements/crons/requirements.txt
WORKDIR /polyaxon/polyaxon
ENTRYPOINT ["celery", "-A", "polyaxon", "worker" , "--loglevel=INFO", "--without-mingle", "--without-gossip", "-n default@%h", "-Q"]
