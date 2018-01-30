FROM polyaxon/polyaxon-core-api

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y install nginx
RUN rm -f /etc/nginx/sites-enabled/default
COPY web/nginx.conf /etc/nginx/sites-enabled/polyaxon.conf
COPY web/uwsgi_params /etc/nginx/uwsgi_params

ENTRYPOINT ["/bin/bash", "./web/start.sh"]
