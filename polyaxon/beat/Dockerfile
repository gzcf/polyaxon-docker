FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=crons

COPY requirements /requirements

VOLUME /polyaxon
WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/crons/requirements.txt

WORKDIR /polyaxon/polyaxon

ENTRYPOINT ["celery", "-A", "polyaxon", "beat", "--loglevel=INFO"]
