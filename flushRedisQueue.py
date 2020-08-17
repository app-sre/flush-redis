import redis
import os

args = {
    "host": os.getenv('REDIS_HOST', ''),
    "password": os.getenv('REDIS_AUTH', ''),
    "ssl": os.getenv('SSL', True)
}
redis_client = redis.StrictRedis(**args)
redis_client.flushall()
