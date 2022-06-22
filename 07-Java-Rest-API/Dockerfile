FROM python:3-alpine

WORKDIR /app

ADD requirements.txt /app/requirements.txt

#RUN apt update && apt install python3-pip
RUN pip install -r requirements.txt

ADD app.py /app/app.py

EXPOSE 8080

#USER userwa

CMD [ "python3", "./app.py" ]

