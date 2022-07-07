## Consul
### Завдання 1
1. Виконати практичний урок https://learn.hashicorp.com/tutorials/consul/load-balancing-haproxy?in=consul/load-balancing
В якості web сервісів використати Python flask i java-rest.
2. Створити dns.txt файл який містить stdout виконання команди A записи web сервісів.
```
dig @127.0.0.1 -p 8600 -t srv web.service.consul
```

Критерій виконання:

 dns.txt файл містить A записи web сервісів.

Виконане завдання оформити у вигляді pull request.

### Завдання 2

Підготувати Linux servers для розгортання Kubernetes.
minimum 2 servers