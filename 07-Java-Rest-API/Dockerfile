FROM python:3-alpine

WORKDIR /app

ENV REDIS_HOST="localhost" \
    REDIS_PASS="none"

ARG MY_ARG
ARG SECOND

ADD requirements.txt /app/requirements.txt
RUN echo "this is $MY_ARG" \
    && pip install -r requirements.txt

RUN echo "$SECOND"

ADD app.py /app/app.py

EXPOSE 8080

#RUN ln -sf /bin/bash /bin/sh
#RUN useradd -r /bin/bash -u 8877 userwa
#USER userwa

ENTRYPOINT ["python3"]
CMD [ "./app.py" ]
