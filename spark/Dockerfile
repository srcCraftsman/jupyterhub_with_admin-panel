FROM tesslime/jhubadm

ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH

RUN apt update && \
    apt install -y default-jdk && \
    wget http://apache-mirror.rbc.ru/pub/apache/spark/spark-3.0.0-preview2/spark-3.0.0-preview2-bin-hadoop2.7.tgz && \
    tar -xzvf spark-3.0.0-preview2-bin-hadoop2.7.tgz && \
    mv spark-3.0.0-preview2-bin-hadoop2.7 /opt/spark-3.0 && \
    ln -s /opt/spark-3.0 /opt/spark