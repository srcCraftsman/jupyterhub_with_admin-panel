FROM tesslime/jhubadm

ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH

RUN apt update && \
    apt install -y default-jdk && \
    echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> /etc/profile 

RUN apt-get install -y scala && \
    pip3 install py4j

RUN wget http://apache-mirror.rbc.ru/pub/apache/spark/spark-3.0.0-preview2/spark-3.0.0-preview2-bin-hadoop2.7.tgz && \
    tar -xzvf spark-3.0.0-preview2-bin-hadoop2.7.tgz && \
    mv spark-3.0.0-preview2-bin-hadoop2.7 /opt/spark-3.0 && \
    ln -s /opt/spark-3.0 /opt/spark

RUN echo "export SPARK_HOME='/opt/spark-3.0'" >> /etc/profile && \
    echo "export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH" >> /etc/profile && \
    echo "export PYSPARK_DRIVER_PYTHON='jupyter'" >> /etc/profile && \
    echo "export PYSPARK_DRIVER_PYTHON_OPTS='notebook'" >> /etc/profile && \
    echo "export PYSPARK_PYTHON=python3" >> /etc/profile && \
    echo "export PATH=$SPARK_HOME:$PATH:~/.local/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin" >> etc/profile