FROM ubuntu
WORKDIR /workspace

LABEL maintainer Hiroki Isobe<hisobe@netprotections.co.jp>

RUN apt-get update
RUN apt-get install python3 python3-pip -y

RUN pip3 install numpy pandas sklearn seaborn
RUN pip3 install chainer Flask Tensorflow Keras Pillow

EXPOSE 5001
CMD ["python3", "run_keras_server.py"]