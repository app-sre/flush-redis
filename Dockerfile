FROM registry.access.redhat.com/ubi8/python-39:latest

RUN pip install redis

ADD flushRedisQueue.py /

ENTRYPOINT [ "python", "/flushRedisQueue.py" ]
