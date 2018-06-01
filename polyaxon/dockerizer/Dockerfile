FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=dockerizer

RUN apt-get -y update && \
    apt-get -y install git

COPY requirements /requirements
WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/dockerizer/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py",  "build"]
