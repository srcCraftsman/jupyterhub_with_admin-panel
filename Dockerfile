FROM python

#RUN \
#    apt update && \
#    apt install -y python3

RUN \
    pip install --upgrade pip && \
    python3 -m pip install jupyterhub && \
    python3 -m pip install jupyter && \
    apt-get update && \
    apt-get install -y nodejs && \
    curl https://www.npmjs.com/install.sh | sh && \ 
    npm install -g configurable-http-proxy 

RUN \
    useradd kratos --create-home && \
    usermod -aG root kratos && \
    echo "gadawar\ngadawar" | passwd kratos
 
COPY ./jupyterhub_config.py ./
#RUN python3 ./bootstrap.py --admin kratos
   
CMD ["jupyterhub"]
