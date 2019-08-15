FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["gunicorn"  , "-b", "127.0.0.1:8080", "main:APP"]