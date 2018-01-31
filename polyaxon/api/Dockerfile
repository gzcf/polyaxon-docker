FROM polyaxon/polyaxon-core-api

MAINTAINER mourad mourafiq <mouradmourafiq@gmail.com>

RUN apt-get -y install nginx
RUN rm -f /etc/nginx/sites-enabled/default
RUN rm -f /etc/nginx/sites-available/default
# We need to copy from within docker
RUN cp /polyaxon/web/nginx.conf /etc/nginx/sites-available/polyaxon.config
RUN ln -s /etc/nginx/sites-available/polyaxon.config /etc/nginx/sites-enabled/polyaxon.conf
RUN cp /polyaxon/web/uwsgi_params /etc/nginx/uwsgi_params

ENTRYPOINT ["/bin/bash", "./web/start.sh"]
