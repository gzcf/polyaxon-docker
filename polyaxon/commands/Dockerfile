FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

COPY requirements /requirements

VOLUME /polyaxon
WORKDIR /polyaxon
copy . /polyaxon

RUN pip3 install --no-cache-dir -r /requirements/commands/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py"]
