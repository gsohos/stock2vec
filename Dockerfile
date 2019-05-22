FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN mkdir /stock2vec
ADD . /stock2vec
RUN pip install --upgrade pip
RUN pip install -r /stock2vec/requirements.txt

ENV PYTHONPATH='/stock2vec:$PYTHONPATH'

WORKDIR /

EXPOSE 8888

CMD jupyter notebook --port=8888 --ip=0.0.0.0
# docker run -u $(id -u):$(id -g) --runtime=nvidia -it -v /home/george/github/stock2vec:/stock2vec tensorflow/tensorflow:latest-gpu-py3-jupyter bash
