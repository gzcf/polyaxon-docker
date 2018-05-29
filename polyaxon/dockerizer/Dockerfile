FROM polyaxon/polyaxon-base

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y update && \
    apt-get -y install git

RUN pip3 install --no-cache-dir -r /requirements/dockerizer/requirements.txt

ENTRYPOINT ["python3", "polyaxon/manage.py",  "build"]
