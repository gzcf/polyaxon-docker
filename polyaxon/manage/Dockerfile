FROM polyaxon/polyaxon-core

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y update && \
    apt-get -y install git

COPY requirements /requirements

VOLUME /polyaxon
WORKDIR /polyaxon
copy . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/monolith/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py"]
