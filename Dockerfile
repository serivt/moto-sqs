FROM python:3.8-slim

COPY requirements.txt /

RUN pip install -r /requirements.txt

EXPOSE 4576

CMD [ "moto_server", "sqs", "-H", "0.0.0.0", "-p", "4576" ]