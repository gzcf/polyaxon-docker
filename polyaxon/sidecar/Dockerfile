FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=sidecar

COPY requirements /requirements
WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/sidecar/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py", "start_sidecar"]
