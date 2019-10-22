FROM rocker/shiny

LABEL maintainer "Tom Wilson <tpw2@aber.ac.uk"

RUN apt-get update && apt-get install -y \
    sudo \
    libxml2-dev \
    libcurl4-openssl-dev \
    git \
    nginx apache2-utils

RUN openssl req -batch -x509 -nodes -days 365 -newkey rsa:2048 \
		-keyout /etc/ssl/private/server.key \
		-out /etc/ssl/private/server.crt


RUN R -e "install.packages('shinythemes', repos = 'https://cran.rstudio.com')"

WORKDIR "/"

RUN git clone https://github.com/aberWARU/waruPortal-maintenance

RUN mv /waruPortal-maintenance /srv/shiny-server/

COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf

ADD ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

COPY shiny-server.sh /usr/bin/shiny-server.sh

RUN chmod +x /usr/bin/shiny-server.sh

CMD service start nginx
CMD ["/usr/bin/shiny-server.sh"]
