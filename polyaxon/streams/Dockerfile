FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=streams

WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/streams/requirements.txt

WORKDIR /polyaxon/polyaxon

ENTRYPOINT ["python3", "-m", "sanic", "streams.api.app", "--host=0.0.0.0", "--port=1337"]
