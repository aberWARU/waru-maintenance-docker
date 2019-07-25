FROM rocker/shiny

LABEL maintainer "Tom Wilson <tpw2@aber.ac.uk"

RUN apt-get update && apt-get install -y \
    sudo \
    libxml2-dev \
    libcurl4-openssl-dev \
    git

RUN R -e "install.packages('shinythemes', repos = 'https://cran.rstudio.com')"

WORKDIR "/"

RUN git clone https://github.com/aberWARU/waruPortal-maintenance

RUN mv /waruPortal-maintenance /srv/shiny-server/

COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf

EXPOSE 80

COPY shiny-server.sh /usr/bin/shiny-server.sh

RUN chmod +x /usr/bin/shiny-server.sh

CMD ["/usr/bin/shiny-server.sh"]
