FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

WORKDIR /polyaxon/polyaxon
ENTRYPOINT ["celery", "-A", "polyaxon", "worker" , "--loglevel=INFO", "--without-mingle", "--without-gossip", "-n default@%h", "-Q"]
