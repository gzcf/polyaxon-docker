FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

COPY requirements /requirements
WORKDIR /polyaxon
COPY . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/monitor_namespace/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py",  "monitor_namespace"]
