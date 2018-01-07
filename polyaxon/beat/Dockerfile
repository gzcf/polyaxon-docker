FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

WORKDIR /polyaxon/polyaxon
ENTRYPOINT ["celery", "-A", "polyaxon", "beat", "--loglevel=INFO"]
