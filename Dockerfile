FROM python

RUN pip install redis

ADD flushRedisQueue.py /

ENTRYPOINT [ "python", "/flushRedisQueue.py" ]
