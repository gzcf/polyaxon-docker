FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

ENV POLYAXON_SERVICE=commands

COPY requirements /requirements
WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/commands/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py"]
