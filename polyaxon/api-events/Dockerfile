FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

WORKDIR /polyaxon/polyaxon
ENTRYPOINT ["python3", "-m", "sanic", "events.api.app", "--host=0.0.0.0", "--port=1337"]
