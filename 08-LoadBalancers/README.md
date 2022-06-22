## Load Balancers. HAProxy.

### Завдання 1

1. Сконфігурувати для HAProxy TLS (https) frontend.
2. Сконфігурувати для HAProxy "error 404" backend.

Критерій виконання:
 haproxy.cfg файл містить конфігурацію.

Виконане завдання оформити у вигляді pull request.

### Завдання 2

Install Haproxy + TLS frontend.
Configure backend servers with TLS (Nginx/Apache/etc + TLS).
Pass HTTPS traffic to a backend server without decrypting the traffic on the load balancer.

Критерій виконання:
 haproxy.cfg файл містить конфігурацію.
 
Виконане завдання оформити у вигляді pull request.


### Завдання 4

Run  Redis DB in docker container.
Build docker image with python script.
Run containers on docker server.
```
import time

import redis
from flask import Flask

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)

def get_hit_count():
    retries = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)

@app.route('/')
def hello():
    count = get_hit_count()
    return 'Hello World! I have been seen {} times.\n'.format(count)
```

Run the same container on second Linux server.
Install Haproxy + TLS frontend.
Configure python backend (roundrobin, x-forward-for, healthcheck)

Критерій виконання:
 haproxy.cfg файл містить конфігурацію.
 Dockerfile містить інструкцію для створення container image.
 
Виконане завдання оформити у вигляді pull request.