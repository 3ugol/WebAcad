## Traefik

### Завдання 1

1. Сконфігурувати для Traefik TLS (https) frontend.
2. Сконфігурувати для Traefik http redirect to https.
3. Збілдити контейнер "red" image який містить Python Flask та відображає html сторінку із текстом червоного кольору "Red here.".
4. Додати docker-script.sh із командою яка запускає контейнер із назвою red з цього red image.
5. Збілдити контейнер "green" image який містить Python Flask та відображає html сторінку із текстом червоного кольору "Green here.".
6. Додати в docker-script.sh команду яка запускає контейнер із назвою green з цього green image.
5. Контейнери повинні мати labels які вкажуть Traefik направляти трафік на:
```
red   if path begin /red
green if path begin /green
```

Критерій виконання:

 red.py файл містить Python code.
 
 green.py файл містить Python code.
 
 docker-script.sh файл містить команди запуску контейнерів.

### Завдання 2*

1. Зробити rewrite url /red -> /green
Користувач набирає в бровзері /red, але потрапляє на /green

2. Зробити redirect url 301 /red -> /green
Користувач набирає в бровзері /red, але бровзер змінює url на /green

Виконане завдання оформити у вигляді pull request.
