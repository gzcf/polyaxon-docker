FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

WORKDIR /polyaxon/api
CMD ["celery", "-A", "api", "worker" , "--loglevel=INFO", "--without-mingle", "--without-gossip", "--concurrency=4", "-Q", "-n default@%h"]
