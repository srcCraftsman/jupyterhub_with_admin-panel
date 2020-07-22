FROM python

ENV ADMUSER=tesslime
ENV ADMPASS=teashop
ENV ROOTPASSWD=teashop

RUN \
    pip install --upgrade pip && \
    python3 -m pip install jupyterhub && \
    python3 -m pip install jupyter && \
    python3 -m pip install pyspark && \
    apt-get update && \
    apt-get install -y nodejs && \
    curl https://www.npmjs.com/install.sh | sh && \ 
    npm install -g configurable-http-proxy

RUN apt-get install -y openssh-server 
 
COPY ./jupyterhub_config.py ./
COPY ./docker-entrypoint.sh ./
RUN chmod +x /docker-entrypoint.sh

COPY ./oracle_driver.sh ./
RUN chmod +x oracle_driver.sh
RUN ./oracle_driver.sh
   
CMD ["/docker-entrypoint.sh"]
