FROM polyaxon/polyaxon-core-api

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y install nginx
RUN rm -f /etc/nginx/sites-enabled/default
# We need to copy from within docker
RUN cp /polyaxon/web/nginx.conf /etc/nginx/sites-enabled/polyaxon.conf
RUN cp /polyaxon/web/uwsgi_params /etc/nginx/uwsgi_params

ENTRYPOINT ["/bin/bash", "./web/start.sh"]
