## Containers. Java. Kaniko.

### Завдання 1

1. Збілдити в докері java JDK+Maven java code (https://spring.io/guides/gs/rest-service/).
2. Скопіювати отриманий jar файл в новий java JRE docker image.
 рекомендовано використовувати multistage build (https://docs.docker.com/develop/develop-images/multistage-build/)
3. Запустити Java container.

Критерій виконання:
 Dockerfile файл містить multistage build.

Виконане завдання оформити у вигляді pull request.

### Завдання 2
1. Запустити kaniko docker (gcr.io/kaniko-project/executor:debug)
 із параметрами та збілдити Python-Redis docker image.
 https://github.com/GoogleContainerTools/kaniko

Критерій виконання:
  run.sh файл містить команду запуску kaniko контейнера із параметрами build Dockerfile.

Виконане завдання оформити у вигляді pull request.
