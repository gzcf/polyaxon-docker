FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

WORKDIR /polyaxon/api
ENTRYPOINT ["celery", "-A", "api", "beat", "--loglevel=DEBUG"]
